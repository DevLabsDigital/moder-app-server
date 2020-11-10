class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :cpf_cnpj
      t.string :address
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :phone
      t.string :email
      t.string :accountable

      t.timestamps
    end
  end
end
