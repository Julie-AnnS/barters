class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user

  def sender?(a_user)
    user.id == a_user.id
  end

  before_destroy :cleanup_notifications
  has_noticed_notifications model_name: "Notification"

  private

  def cleanup_notifications
    notifications_as_message.destroy_all
  end
end
