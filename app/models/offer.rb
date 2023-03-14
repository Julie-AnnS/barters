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
end
