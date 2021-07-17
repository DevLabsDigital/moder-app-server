class AddIsOnlineToDeliverymen < ActiveRecord::Migration[5.2]
  def change
    add_column :deliverymen, :is_online, :boolean
  end
end
