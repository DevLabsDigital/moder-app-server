class AddEmailHashToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :email_hash, :string
  end
end
