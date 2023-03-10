class RemoveUserFromOffers < ActiveRecord::Migration[7.0]
  def change
    remove_column :offers, :user
  end
end
