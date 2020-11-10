# == Schema Information
#
# Table name: formula_params
#
#  id                        :bigint           not null, primary key
#  label                     :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  contabil_pattern_param_id :uuid
#  formula_id                :bigint
#
# Indexes
#
#  index_formula_params_on_contabil_pattern_param_id  (contabil_pattern_param_id)
#  index_formula_params_on_formula_id                 (formula_id)
#
# Foreign Keys
#
#  fk_rails_...  (formula_id => formulas.id)
#

require 'test_helper'

class FormulaParamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
