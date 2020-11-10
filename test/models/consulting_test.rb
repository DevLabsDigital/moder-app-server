# == Schema Information
#
# Table name: consultings
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  company_id :bigint
#  profile_id :bigint
#
# Indexes
#
#  index_consultings_on_company_id  (company_id)
#  index_consultings_on_profile_id  (profile_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (profile_id => profiles.id)
#

require 'test_helper'

class ConsultingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
