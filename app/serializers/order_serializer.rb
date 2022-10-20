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

class OrderSerializer
    include JSONAPI::Serializer
    set_key_transform :camel_lower
    
    attributes :id, :destination_accountable, :destination_address, :destination_phone, :destination_city, :destination_state, :destination_neighborhood, :note, :state
    
    attribute :created_at do |obj|
        I18n.l obj.created_at.to_date, :format => :day_name
    end

    attribute :stateLabel do |obj|
        I18n.t(obj.state)
    end

    attribute :actionText do |obj|
        obj.deliveryman_action_text
    end

    attribute :isPicked do |obj|
        obj.is_picked?
    end

    attribute :isDelivered do |obj|
        obj.is_delivered?
    end

    attribute :createdToday do |obj|
        obj.created_at >= Time.now.at_beginning_of_day
    end

    attribute :createdThisMonth do |obj|
        obj.created_at >= Time.now.at_beginning_of_month
    end
    
    attribute :company do |obj|
         {
            id: obj.company.id,
            accountable: obj.company.accountable,
            address: obj.company.address,
            city: obj.company.city,
            cpf_cnpj: obj.company.cpf_cnpj,
            email: obj.company.email,
            name: obj.company.name,
            neighborhood: obj.company.neighborhood,
        }
    end
  end
  
