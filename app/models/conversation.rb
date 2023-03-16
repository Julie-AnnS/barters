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
  has_noticed_notifications model_name: "Notification"
  has_many :notifications, through: :participant_one, class_name: "User", dependent: :destroy
  has_many :notifications, through: :participant_two, class_name: "User", dependent: :destroy

  def self.btwn_users(first, second)
    Conversation.find_by(participant_one: first, participant_two: second) ||
      Conversation.find_by(participant_one: second, participant_two: first)
  end
end
