# == Schema Information
#
# Table name: cost_center_areas
#
#  id         :bigint           not null, primary key
#  label      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  company_id :bigint
#
# Indexes
#
#  index_cost_center_areas_on_company_id  (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#

require 'test_helper'

class CostCenterAreaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
