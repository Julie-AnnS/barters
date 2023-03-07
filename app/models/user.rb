class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :offers_as_requester, class_name: "Offer", foreign_key: :requester_id
  has_many :offers_as_collaborator, class_name: "Offer", foreign_key: :collaborator_id
  # validates :first_name, presence: true, length: { minimum: 3 }, { case_sensitive: false }
  # validates :last_name, presence: true, length: { minimum: 3 }, { case_sensitive: false }
  # validates :nickname, presence: true, length: { minimum: 3 }, uniqueness: true, { case_sensitive: false }
  # validates :phone_number, presence: true, length: { minimum: 10 }, numericality: { only_integer: true }
  # validates :location, presence: true
  # validates :language, presence: true
end
