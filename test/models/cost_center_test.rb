# == Schema Information
#
# Table name: cost_centers
#
#  id                        :bigint           not null, primary key
#  archive                   :string
#  balance_sheet_code_column :integer
#  code_column               :integer
#  column_positions          :jsonb
#  comment                   :text
#  cost_center_code_column   :string
#  count_description_column  :integer
#  credito_column            :integer
#  debito_column             :integer
#  description_column        :integer
#  file                      :string
#  file_type                 :string
#  header_columns            :jsonb
#  is_configuration          :boolean
#  month                     :integer
#  saldo_anterior_column     :integer
#  saldo_atual_column        :integer
#  version                   :integer
#  year                      :integer
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  company_id                :bigint
#
# Indexes
#
#  index_cost_centers_on_company_id  (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#

require 'test_helper'

class CostCenterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
