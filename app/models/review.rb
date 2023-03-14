class Review < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  validates :content, length: {minimum: 20}
end
