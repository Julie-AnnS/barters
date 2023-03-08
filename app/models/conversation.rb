class Conversation < ApplicationRecord
  has_many :messages, dependent: :destroy
  scope :get_conversation, lambda { |participant_one, participant_two|
    where(participant_one_id: participant_one.id, participant_two_id: participant_two.id)
      .or(where(participant_one_id: participant_two.id, participant_two_id: participant_one.id))
  }
end
