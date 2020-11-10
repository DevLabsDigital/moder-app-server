# == Schema Information
#
# Table name: indicators
#
#  id          :bigint           not null, primary key
#  description :string
#  label       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  company_id  :bigint
#  label_id    :string
#
# Indexes
#
#  index_indicators_on_company_id  (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#

require 'test_helper'

class IndicatorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
