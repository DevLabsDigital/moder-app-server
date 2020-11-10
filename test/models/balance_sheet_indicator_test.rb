# == Schema Information
#
# Table name: balance_sheet_indicators
#
#  id                 :bigint           not null, primary key
#  value              :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  balance_sheet_id   :bigint
#  indicator_label_id :string
#
# Indexes
#
#  index_balance_sheet_indicators_on_balance_sheet_id  (balance_sheet_id)
#

require 'test_helper'

class BalanceSheetIndicatorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
