# == Schema Information
#
# Table name: orders
#
#  id                      :bigint           not null, primary key
#  destination_accountable :string
#  destination_address     :string
#  destination_phone       :string
#  note                    :string
#  state                   :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  company_id              :bigint
#  deliveryman_id          :bigint
#
# Indexes
#
#  index_orders_on_company_id      (company_id)
#  index_orders_on_deliveryman_id  (deliveryman_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (deliveryman_id => deliverymen.id)
#

class Order < ApplicationRecord
  belongs_to :deliveryman
  belongs_to :company
  before_create :setup_first_state
  before_update :avoid_empty_state
  enum state: {
  	pending: 'pending',
  	on_way: 'on_way',
  	completed: 'completed',
  	canceled: 'canceled'
  }

  def avoid_empty_state
  	if state = nil
  		state = state_was
  	end
  end

  def possible_states
  	case state
  	when 'pending'
  		['on_way', 'canceled']
	when 'on_way'
		['completed', 'canceled']
	else
		[]
  		
  	end
  end

  def setup_first_state
  	self.state = 'pending'
  end
end
