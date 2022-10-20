class CreateDeliverymen < ActiveRecord::Migration[5.2]
  def change
    create_table :deliverymen do |t|
      t.string :name
      t.date :birthday
      t.string :cpf_cnpj
      t.string :rg
      t.string :address
      t.string :neighborhood
      t.string :city
      t.string :uf
      t.string :phone
      t.string :email
      t.string :vehicle_license_plate
      t.string :vehicle_year
      t.string :vehicle_model
      t.string :vehicle_color

      t.timestamps
    end
  end
end
