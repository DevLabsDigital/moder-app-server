class AddCpfToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :cpf, :string
    add_column :profiles, :phone, :string
  end
end
