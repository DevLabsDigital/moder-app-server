module Uploadable
  extend ActiveSupport::Concern

  included do
    enum month: {
      "janeiro" => 1,
      "fevereiro" => 2,
      "março" => 3,
      "abril" => 4,
      "maio" => 5,
      "junho" => 6,
      "julho" => 7,
      "agosto" => 8,
      "setembro" => 9,
      "outubro" => 10,
      "novembro" => 11,
      "dezembro" => 12,
    }
    
    scope :by_year, ->(year){where("year = ?", year || Time.now.year)}

    scope :montly_balance, ->{where("is_configuration = false and month is not null")}

    scope :configuration, ->{where("is_configuration = true").order(created_at: :desc).limit(1)}

    has_many :cost_center_records

    # validates_presence_of [:year, :month]

    has_one_attached :archive
    
    after_create :set_header_columns
    after_save :setup_list
    
    
    before_create :setup_version
  end

  def columns_selected
    return !!self.column_positions
  end

  def branch_length
    # cost_center_records.maximum("(CHAR_LENGTH(code) - CHAR_LENGTH(REPLACE(code, '.', ''))) / CHAR_LENGTH('.')")
    cost_center_records.maximum("CHAR_LENGTH(code)")
  end

  def setup_version
    begin
      old_file = company.cost_centers.where(month: self.month, year: self.year).order(:version).last
      self.version = old_file.version + 1
    rescue Exception => e
      self.version = 1
    end
    
  end

  def date
    "#{month.capitalize} de #{year}"
  end

  def set_header_columns
    if self.is_configuration
      workbook = RubyXL::Parser.parse_buffer(self.archive.download)
      worksheet =  workbook.worksheets[0]
      
      worksheet[0].cells.each do |x| 
        header_columns[x.value] = x.column
      end

      self.save
    end
  end


  def header_is_configured?
    return self.code_column && self.description_column && self.saldo_anterior_column && self.debito_column && self.credito_column && self.saldo_atual_column && self.balance_sheet_code_column
  end

  def delete_old_versions
    
    self.class.where("company_id = ? and month = ? and year = ? and created_at < ?", self.company_id, self.month_before_type_cast, self.year, self.created_at).each do |c|
      begin
        c.cost_center_records.delete_all
        c.delete
      rescue Exception => e
        
      end
    end
  end

  def setup_list
    
    if header_is_configured? && cost_center_records.count == 0
      # url = Rails.application.routes.url_helpers.rails_blob_path(self.archive, only_path: true)
      workbook = RubyXL::Parser.parse_buffer(self.archive.download)

      worksheet =  workbook.worksheets[0]
      size = worksheet.count - 1

      @patterns = ConfiguredPattern.select("TRIM(balance_code) as balance_code, contabil_pattern_param_id").pluck(:balance_code, :contabil_pattern_param_id).to_h
        
        worksheet[1..size].each do |line|
          begin
            if !line[code_column].value.to_s.strip.blank?
                self.cost_center_records.create({
                  code: line[code_column].value.to_s.strip,
                  balance_sheet_code: line[balance_sheet_code_column.to_i].value.to_s.strip,
                  description: line[description_column].value.to_s.strip,
                  account_description: count_description_column ? line[count_description_column].value.to_s.strip : nil,
                  saldo_anterior: line[saldo_anterior_column].value.to_s.strip,
                  debito: line[debito_column].value.to_s.strip,
                  credito: line[credito_column].value.to_s.strip,
                  saldo_atual: line[saldo_atual_column].value.to_s.strip,
                })
            end
            
          rescue Exception => e
            
          end
            
          
        end
      
      self.delete_old_versions
      self.setup_code_for_all_balance_sheets
      return "finalizado"
    end
  end
end