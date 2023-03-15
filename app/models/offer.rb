class Offer < ApplicationRecord
  belongs_to :requester, class_name: "User"
  belongs_to :collaborator, class_name: "User"
  belongs_to :recipient, class_name: "User"

  has_noticed_notifications model_name: "Notification"
  has_many :notifications, through: :user, dependent: :destroy
  after_create_commit :notify_recipient
  before_destroy :cleanup_notifications

  def self.between_users(first, second)
    Offer.find_by(requester: first, collaborator: second) ||
      Offer.find_by(requester: second, collaborator: first)
  end

  enum status: {
    pending: 0,
    accepted: 1,
    declined: 2
  }

  private
  def notify_recipient
    NewNotification.with(offer: @offer).deliver(user) ||
    NewNotification.with(offer: @offer).deliver(offer.requester)
  end

  def cleanup_notifications
    notifications_as_offer.destroy_all
  end
end
