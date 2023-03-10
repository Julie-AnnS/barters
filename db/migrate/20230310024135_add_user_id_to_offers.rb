class AddUserIdToOffers < ActiveRecord::Migration[7.0]
  def change
    execute ("DELETE FROM offers;")
    add_reference :offers, :user, null: false, foreign_key: true
  end
end
