# == Schema Information
#
# Table name: cost_center_parametrizations
#
#  id                     :bigint           not null, primary key
#  cost_center_code       :string
#  labor_cost_is_fixed    :boolean
#  ordinary_cost_is_fixed :boolean
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  company_id             :bigint
#  cost_center_area_id    :bigint
#
# Indexes
#
#  index_cost_center_parametrizations_on_company_id           (company_id)
#  index_cost_center_parametrizations_on_cost_center_area_id  (cost_center_area_id)
#

require 'test_helper'

class CostCenterParametrizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
