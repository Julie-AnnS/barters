class ChangeUserColumnInOffers < ActiveRecord::Migration[7.0]
  def change
    remove_reference :offers, :user, index: true, foreign_key: true
    add_column :offers, :user, :string
  end
end
