class AddFildsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :destination_city, :string
    add_column :orders, :destination_state, :string
    add_column :orders, :destination_neighborhood, :string
  end
end
