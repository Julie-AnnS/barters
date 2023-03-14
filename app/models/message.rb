class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user
  belongs_to :recipient, class_name: "User"

  after_create_commit :notify_recipient

  def sender?(a_user)
    user.id == a_user.id
  end

  private

  def notify_recipient
    NewMessageNotification.with(message: self).deliver(recipient)
  end
end
