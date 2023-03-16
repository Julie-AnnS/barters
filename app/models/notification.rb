class Notification < ApplicationRecord
  include Noticed::Model
  belongs_to :recipient, class_name: 'User', polymorphic: true
end
