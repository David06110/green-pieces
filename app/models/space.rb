class Space < ApplicationRecord
  belongs_to :user
  validates :type_of, presence: true
  validates :name, presence: true
  validates :check_in, presence: true
  validates :check_out, presence: true
  validates :price, presence: true
  validates :user_id, presence: true
  validates :name, uniqueness: { scope: :check_in, message: "is already in the list" } #one name for one date
  validates :name, uniqueness: { scope: :check_out, message: "is already in the list" } #one name for one date
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  validates :name, presence: true, uniqueness: true
end
