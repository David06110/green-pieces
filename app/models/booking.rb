class Booking < ApplicationRecord
  belongs_to :space
  belongs_to :user
  validates :user_id, uniqueness: true
  has_many :reviews

  # has_one_attached :photo

end
