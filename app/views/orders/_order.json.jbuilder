json.extract! order, :id, :destination_accountable, :destination_address, :destination_phone, :note, :company_id, :deliveryman_id, :created_at, :updated_at
json.url order_url(order, format: :json)
