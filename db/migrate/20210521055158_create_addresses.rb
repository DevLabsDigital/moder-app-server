class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :profile, foreign_key: true
      t.string :cep
      t.string :address
      t.string :district
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
