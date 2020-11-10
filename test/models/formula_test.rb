# == Schema Information
#
# Table name: formulas
#
#  id                            :bigint           not null, primary key
#  cc_position                   :integer
#  cost_center_demonstration     :boolean
#  formula_type                  :string
#  is_only_index                 :boolean
#  label                         :string
#  number_format                 :string
#  pattern                       :string
#  position                      :integer          default(0)
#  scope                         :string
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#  company_id                    :bigint
#  contabil_pattern_reference_id :integer
#  fr_id                         :integer
#  segment_id                    :bigint
#
# Indexes
#
#  index_formulas_on_company_id  (company_id)
#  index_formulas_on_segment_id  (segment_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (segment_id => segments.id)
#

require 'test_helper'

class FormulaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
