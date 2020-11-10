# == Schema Information
#
# Table name: chart_formulas
#
#  id         :bigint           not null, primary key
#  is_total   :boolean
#  label      :string
#  pattern    :string
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  chart_id   :bigint
#
# Indexes
#
#  index_chart_formulas_on_chart_id  (chart_id)
#
# Foreign Keys
#
#  fk_rails_...  (chart_id => charts.id)
#

require 'test_helper'

class ChartFormulaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
