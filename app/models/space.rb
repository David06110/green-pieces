class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :style, presence: true
  # validates :name, presence: true, uniqueness: true
  # validates :name, uniqueness: { scope: :check_in, message: "is already in the list" } #one name for one date
  validates :name, uniqueness: { scope: [:check_out, :check_in], message: "is already in the list" } #one name for one date
  validates :check_in, presence: true
  validates :check_out, presence: true
  validates :price, presence: true
  validates :user_id, presence: true
  # has_many :bookings, dependent: :destroy
  # has_many :reviews, through: :bookings
end
