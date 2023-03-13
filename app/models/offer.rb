class Offer < ApplicationRecord
  belongs_to :requester, class_name: "User"
  belongs_to :collaborator, class_name: "User"



  enum status: {
    pending: 0,
    accepted: 1,
    declined: 2
  }
end
