class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :offers_as_requester, class_name: "Offer", foreign_key: :requester_id, dependent: :destroy
  has_many :offers_as_collaborator, class_name: "Offer", foreign_key: :collaborator_id, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :conversations, through: :messages, dependent: :destroy
  validates :first_name, presence: true, length: { minimum: 3 }, uniqueness: { case_sensitive: false }
  validates :last_name, presence: true, length: { minimum: 3 }, uniqueness: { case_sensitive: false }
  validates :nickname, presence: true, length: { minimum: 3 }, uniqueness: { case_sensitive: false }
  validates :phone_number, presence: true, length: { minimum: 10 }, numericality: { only_integer: true }
  validates :location, presence: true
end
