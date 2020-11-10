class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :deliveryman, foreign_key: true
      t.references :company, foreign_key: true
      t.string :destination_accountable
      t.string :destination_phone
      t.string :destination_address
      t.string :note

      t.timestamps
    end
  end
end
