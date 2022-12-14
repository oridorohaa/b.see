class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :comments
  has_many :bike_rack_comments, through: :comments
  has_many :lane_comments, through: :comments
  has_many :shop_comments, through: :comments
  has_many :video_comments, through: :comments

  has_one_attached :avatar

  has_many :lane_likes
  has_many :shop_likes
  has_many :bike_rack_likes
  has_many :video_likes

  has_many :bike_racks
  has_many :lanes
  has_many :shops
  has_many :videos

  validates :username, presence: true
  validates :username, uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
