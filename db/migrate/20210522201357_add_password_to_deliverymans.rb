class AddPasswordToDeliverymans < ActiveRecord::Migration[5.2]
  def change
    add_column :deliverymen, :password_digest, :string
    add_column :deliverymen, :cep, :string
  end
end
