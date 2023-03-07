class AddKittSchemaToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :nickname, :string
    add_column :users, :phone_number, :string
    add_column :users, :location, :string
    add_column :users, :language, :string
  end
end
