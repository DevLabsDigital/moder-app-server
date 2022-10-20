# == Schema Information
#
# Table name: orders
#
#  id                       :bigint           not null, primary key
#  destination_accountable  :string
#  destination_address      :string
#  destination_city         :string
#  destination_neighborhood :string
#  destination_phone        :string
#  destination_state        :string
#  note                     :string
#  state                    :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  company_id               :bigint
#  deliveryman_id           :bigint
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
  after_create :send_notification
  enum state: {
  	pending: 'pending',
  	on_way: 'on_way',
	picking_up: "picking_up",
	back_to_company: 'back_to_company',
  	completed: 'completed',
  	canceled: 'canceled'
  }

  def avoid_empty_state
  	if state == nil
  		state = state_was
  	end
  end

  def send_notification
	data = {
		notification_type: "new_order",
		order: OrderSerializer.new(self).serializable_hash
	}
	
	
	buttons = OneSignal::Buttons.new(
		buttons: [{id: 'accept', text: 'Aceitar' }, {id: 'reject', text: 'Rejeitar' }]
	)
	Deliveryman.send_notification("Pedido", "Existe um novo pedido disponível", data, buttons)
  end

  def test_deliver
	self.state = "pending"
	self.save
	self.send_notification
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

  def delivery_update
	case state
	when "picking_up"
		self.state = "on_way"
	when 'on_way'
		self.state = "back_to_company"
	when 'back_to_company'
		self.state = "completed"
	else
		raise "Não é possível alterar outros estados"
	end

	self.save
  end

  def deliveryman_action_text
	case state
	when "picking_up"
		"Peguei o pedido"
	when 'on_way'
		"Realizei a entrega"
	when 'back_to_company'
		"Retornou ao estabelecimento"
	when "completed"
		"Concluido"
	end
  end

  def set_deliveryman(deliveryman)
	self.deliveryman_id = deliveryman.id
	self.state = 'picking_up'
	self.save
  end

  def setup_first_state
  	self.state = 'pending'
  end

  def is_delivered?
	!["pending", "canceled", "picking_up", "on_way"].include?(self.state)
  end

  def is_picked?
	!["pending", "canceled", "picking_up"].include?(self.state)
  end
end
