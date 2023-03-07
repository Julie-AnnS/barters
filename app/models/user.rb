class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :offers_as_requester, class_name: "Offer", foreign_key: :requester_id
  has_many :offers_as_collaborator, class_name: "Offer", foreign_key: :collaborator_id
end
