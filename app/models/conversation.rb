class Conversation < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :participant_one, class_name: "User"
  belongs_to :participant_two, class_name: "User"
  scope :get_conversation, lambda { |participant_one, participant_two|
    where(participant_one_id: participant_one.id, participant_two_id: participant_two.id)
      .or(where(participant_one_id: participant_two.id, participant_two_id: participant_one.id))
  }
  include PgSearch::Model
  pg_search_scope :search_convos,
  against: [ :first_name, :nickname ],
  using: {
    tsearch: { prefix: true }
  }
end


