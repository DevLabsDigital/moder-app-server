# == Schema Information
#
# Table name: budgets
#
#  id              :bigint           not null, primary key
#  archive         :string
#  estimate        :float
#  month           :integer
#  reference_model :string
#  year            :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  company_id      :bigint
#  reference_id    :string
#
# Indexes
#
#  index_budgets_on_company_id  (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#

require 'test_helper'

class BudgetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
