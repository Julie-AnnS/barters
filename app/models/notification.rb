class Notification < ApplicationRecord
  include Noticed::Model
  belongs_to :user, polymorphic: true
end
