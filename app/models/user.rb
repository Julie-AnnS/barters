class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :offers_as_requester, class_name: "Offer", foreign_key: :requester_id, dependent: :destroy
  has_many :offers_as_collaborator, class_name: "Offer", foreign_key: :collaborator_id, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :notifications, as: :recipient, dependent: :destroy, foreign_key: :recipient_id
  has_one_attached :avatar
  has_many_attached :photos
  validates :first_name, presence: true, length: { minimum: 3 }, uniqueness: { case_sensitive: false }
  validates :last_name, presence: true, length: { minimum: 3 }, uniqueness: { case_sensitive: false }
  validates :nickname, presence: true, length: { minimum: 3 }, uniqueness: { case_sensitive: false }
  validates :phone_number, presence: true, length: { minimum: 10 }
  validates :location, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_artists,
  against: [ :services, :location ],
  using: {
    tsearch: { prefix: true }
  }

  def conversations
    Conversation.where("participant_one_id = ? OR participant_two_id = ?", id, id)
  end

  def average_review_rating
    reviews.size.positive? ? reviews.map(&:rating).sum / reviews.size : nil
  end
end
