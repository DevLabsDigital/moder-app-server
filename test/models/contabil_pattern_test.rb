# == Schema Information
#
# Table name: contabil_patterns
#
#  id         :bigint           not null, primary key
#  cloned_of  :integer
#  deleted_at :datetime
#  label      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  company_id :bigint
#  segment_id :bigint
#
# Indexes
#
#  index_contabil_patterns_on_company_id  (company_id)
#  index_contabil_patterns_on_segment_id  (segment_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (segment_id => segments.id)
#

require 'test_helper'

class ContabilPatternTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
