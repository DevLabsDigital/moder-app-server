# == Schema Information
#
# Table name: budget_rows
#
#  id                 :bigint           not null, primary key
#  amount             :float
#  balance_sheet_code :string
#  month              :integer
#  reference_code     :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  budget_id          :bigint
#
# Indexes
#
#  index_budget_rows_on_budget_id  (budget_id)
#
# Foreign Keys
#
#  fk_rails_...  (budget_id => budgets.id)
#

require 'test_helper'

class BudgetRowTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
