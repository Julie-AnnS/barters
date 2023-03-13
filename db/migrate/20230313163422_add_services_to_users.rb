class AddServicesToUsers < ActiveRecord::Migration[7.0]
  def change
   add_column :users, :services, :text
  end
end
