class Offer < ApplicationRecord
  belongs_to :requester, class_name: "User"
  belongs_to :collaborator, class_name: "User"

  def self.between_users(first, second)
    Offer.find_by(requester: first, collaborator: second) ||
      Offer.find_by(requester: second, collaborator: first)
  end

  enum status: {
    pending: 0,
    accepted: 1,
    declined: 2
  }

  has_noticed_notifications model_name: "Notification"
  has_many :notifications, through: :user, dependent: :destroy
  before_destroy :cleanup_notifications

  def notify_recipient
    OfferNotification.with(offer: @offer).deliver_later(@offer.collaborator)
  end

  def cleanup_notifications
    notifications_as_offer.destroy.all
  end
end
