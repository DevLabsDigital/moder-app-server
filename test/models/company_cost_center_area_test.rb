# == Schema Information
#
# Table name: company_cost_center_areas
#
#  id                  :bigint           not null, primary key
#  code                :string
#  is_fixed            :boolean
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  company_id          :bigint
#  cost_center_area_id :bigint
#
# Indexes
#
#  index_company_cost_center_areas_on_company_id           (company_id)
#  index_company_cost_center_areas_on_cost_center_area_id  (cost_center_area_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (cost_center_area_id => cost_center_areas.id)
#

require 'test_helper'

class CompanyCostCenterAreaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
