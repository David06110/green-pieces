class Booking < ApplicationRecord
  belongs_to :space
  belongs_to :user
  validates :space_id, uniqueness: true
end
