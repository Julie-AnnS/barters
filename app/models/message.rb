class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user

  def sender?(a_user)
    user.id == a_user.id
  end

  after_create_commit :notify_recipient
  before_destroy :cleanup_notifications
  has_noticed_notifications model_name: "Notification"

  private

  def notify_recipient
    if conversation.participant_one_id == user_id
      MessageNotification.with(message: self, conversation: conversation).deliver_later(conversation.participant_two)
    else
      MessageNotification.with(message: self, conversation: conversation).deliver_later(conversation.participant_one)
    end
  end

  def cleanup_notifications
    notifications_as_message.destroy_all
  end
end
