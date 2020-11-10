# == Schema Information
#
# Table name: enterprises
#
#  id             :bigint           not null, primary key
#  category       :integer
#  head_office_id :integer
#  group_id       :integer
#  razao_social   :string
#  cep            :string
#  cnpj           :string
#  segment_id     :bigint
#  contact        :string
#  phone          :string
#  logo           :string
#  plan_id        :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class EnterpriseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
