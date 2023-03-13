class AddCurrentlyOfferingUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :currently_offering, :string
  end
end
