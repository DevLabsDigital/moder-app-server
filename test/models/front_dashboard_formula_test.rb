# == Schema Information
#
# Table name: front_dashboard_formulas
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  company_id :bigint
#  formula_id :bigint
#
# Indexes
#
#  index_front_dashboard_formulas_on_company_id  (company_id)
#  index_front_dashboard_formulas_on_formula_id  (formula_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (formula_id => formulas.id)
#

require 'test_helper'

class FrontDashboardFormulaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
