class Review < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  validates :content, presence: true
end
