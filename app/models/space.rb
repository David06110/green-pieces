class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
 
  STYLE = ["Garden", "Pool", "Outdoor kitchen"]
  validates :style, presence: true, inclusion: {in: STYLE}
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
