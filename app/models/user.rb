class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatabl
         
         
         
  has_one_attached :photo
  has_many :spaces
  has_many :bookings
  has_many :reviews, through: :bookings
end
