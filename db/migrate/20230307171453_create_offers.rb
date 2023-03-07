class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.text :my_tasks
      t.text :others_tasks
      t.float :deposit
      t.integer :status

      t.references :requester, foreign_key: { to_table: :users }
      t.references :collaborator, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
