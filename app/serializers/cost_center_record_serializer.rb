# == Schema Information
#
# Table name: cost_center_records
#
#  id                  :bigint           not null, primary key
#  account_description :string
#  balance_sheet_code  :string
#  code                :string
#  cost_center_code    :string
#  credito             :string
#  debito              :string
#  description         :string
#  difference          :money
#  f_saldo_anterior    :float
#  f_saldo_atual       :float
#  saldo_anterior      :string
#  saldo_atual         :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  cost_center_id      :bigint
#
# Indexes
#
#  index_cost_center_records_on_cost_center_id  (cost_center_id)
#
# Foreign Keys
#
#  fk_rails_...  (cost_center_id => cost_centers.id)
#

class CostCenterRecordSerializer
  include FastJsonapi::ObjectSerializer
  attributes :code, :description, :f_saldo_anterior, :debito, :credito, :f_saldo_atual, :balance_sheet_code, :operacional
  attribute :is_branch_end do |object|
    object.branch_end?
  end
end
