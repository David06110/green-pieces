class Booking < ApplicationRecord
  belongs_to :space
  belongs_to :user
end
