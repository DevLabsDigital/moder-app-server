# == Schema Information
#
# Table name: contabil_pattern_params
#
#  id                        :uuid             not null, primary key
#  childreen_label_fixed     :string
#  fixed                     :boolean          default(FALSE)
#  head                      :string
#  head_group                :string
#  head_of_cost_center       :string
#  is_tail                   :boolean
#  key                       :uuid
#  label                     :string
#  operation                 :string
#  position                  :integer
#  reversed_tree_label_fixed :string           default([]), is an Array
#  tree_label_fixed          :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  contabil_pattern_id       :bigint
#  fr_id                     :uuid
#  parent_id                 :uuid
#
# Indexes
#
#  index_contabil_pattern_params_on_contabil_pattern_id  (contabil_pattern_id)
#  index_contabil_pattern_params_on_position             (position)
#
# Foreign Keys
#
#  fk_rails_...  (contabil_pattern_id => contabil_patterns.id)
#

require 'test_helper'

class ContabilPatternParamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
