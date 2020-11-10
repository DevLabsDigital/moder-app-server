# == Schema Information
#
# Table name: balance_sheets
#
#  id                    :bigint           not null, primary key
#  after_difference      :string           default([]), is an Array
#  archive               :string
#  before_difference     :string           default([]), is an Array
#  code_column           :integer
#  column_positions      :jsonb
#  comment               :text
#  credito_column        :integer
#  debito_column         :integer
#  deleted_at            :datetime
#  description_column    :integer
#  file                  :string
#  header_columns        :jsonb
#  is_configuration      :boolean          default(FALSE)
#  month                 :integer
#  not_configured_codes  :string           default([]), is an Array
#  saldo_anterior_column :integer
#  saldo_atual_column    :integer
#  version               :integer
#  volume                :string
#  year                  :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  company_id            :bigint
#
# Indexes
#
#  index_balance_sheets_on_company_id  (company_id)
#  index_balance_sheets_on_deleted_at  (deleted_at)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#

require 'test_helper'

class BalanceSheetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
