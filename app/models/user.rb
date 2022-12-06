class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :comments

  has_many :likes
  has_many :bike_racks
  has_many :lanes
  has_many :shops
  has_many :videos
  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
