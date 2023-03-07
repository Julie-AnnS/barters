class Offer < ApplicationRecord
  belongs_to :requester, class_name: "User"
  belongs_to :collaborator, class_name: "User"
end
