# == Schema Information
#
# Table name: configured_patterns
#
#  id                        :bigint           not null, primary key
#  balance_code              :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  company_id                :bigint
#  contabil_pattern_param_id :uuid
#
# Indexes
#
#  index_configured_patterns_on_company_id                 (company_id)
#  index_configured_patterns_on_contabil_pattern_param_id  (contabil_pattern_param_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#

require 'test_helper'

class ConfiguredPatternTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
