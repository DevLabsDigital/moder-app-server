# == Schema Information
#
# Table name: charts
#
#  id              :bigint           not null, primary key
#  label           :string
#  situation_label :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  company_id      :bigint
#
# Indexes
#
#  index_charts_on_company_id  (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#

require 'test_helper'

class ChartTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
