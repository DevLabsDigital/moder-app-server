# == Schema Information
#
# Table name: balance_sheet_records
#
#  id                        :bigint           not null, primary key
#  code                      :string
#  credito                   :string
#  debito                    :string
#  deleted_at                :datetime
#  description               :string
#  difference                :money
#  f_saldo_anterior          :float
#  f_saldo_atual             :float
#  saldo_anterior            :string
#  saldo_atual               :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  balance_sheet_id          :bigint
#  contabil_pattern_param_id :uuid
#
# Indexes
#
#  index_balance_sheet_records_on_balance_sheet_id           (balance_sheet_id)
#  index_balance_sheet_records_on_contabil_pattern_param_id  (contabil_pattern_param_id)
#  index_balance_sheet_records_on_deleted_at                 (deleted_at)
#
# Foreign Keys
#
#  fk_rails_...  (balance_sheet_id => balance_sheets.id)
#

class BalanceSheetRecordSerializer
  include FastJsonapi::ObjectSerializer
  attributes :code, :description, :saldo_anterior, :debito, :credito, :saldo_atual, :f_saldo_anterior, :f_saldo_atual
  attribute :is_branch_end do |object|
    object.branch_end?
  end
end
