class AddCurrentlyLookingForUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :currently_looking, :string
  end
end
