class Booking < ApplicationRecord
  belongs_to :space
  belongs_to :user
  validates :user_id, uniqueness: { scope: :space_id, message: "is already in the list" } #one user for one space
  has_many :reviews, dependent: :destroy

  # has_one_attached :photo

end
