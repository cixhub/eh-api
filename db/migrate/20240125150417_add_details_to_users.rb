class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string, null: true
    add_column :users, :phone_number, :string, null: true
    add_column :users, :avatar, :string, null: true
  end
end
