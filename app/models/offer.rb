class Offer < ApplicationRecord
  belongs_to :requester, class_name: "User"
  belongs_to :collaborator, class_name: "User"

  def self.between_users(first, second)
    Offer.find_by(requester: first, collaborator: second) ||
      Offer.find_by(requester: second, collaborator: first)
  end
  validates_presence_of :start_date, :end_date
  enum status: {
    pending: 0,
    accepted: 1,
    declined: 2
  }

  def percent_time_left
    return 100 if Time.now >= end_date

    total_time = end_date - start_date
    elapsed_time = Time.now - start_date
    time_left = (elapsed_time * 100) / total_time
    return time_left.round
  end
end
