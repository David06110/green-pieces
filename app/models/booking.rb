class Booking < ApplicationRecord
  belongs_to :space
  belongs_to :user
  has_many :reviews
end
