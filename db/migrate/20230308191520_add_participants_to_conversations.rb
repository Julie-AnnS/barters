class AddParticipantsToConversations < ActiveRecord::Migration[7.0]
  def change
    add_column :conversations, :participant_one_id, :integer
    add_column :conversations, :participant_two_id, :integer
  end
end
