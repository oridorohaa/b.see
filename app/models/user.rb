class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :comments, dependent: :destroy
  has_many :bike_rack_comments, through: :comments
  has_many :lane_comments, through: :comments
  has_many :shop_comments, through: :comments
  has_many :video_comments, through: :comments

  has_one_attached :avatar

  has_many :lane_likes, dependent: :destroy
  has_many :shop_likes, dependent: :destroy
  has_many :bike_rack_likes, dependent: :destroy
  has_many :video_likes, dependent: :destroy

  has_many :bike_racks, dependent: :destroy
  has_many :lanes, dependent: :destroy
  has_many :shops, dependent: :destroy
  has_many :videos, dependent: :destroy

  has_many :reports, dependent: :destroy

  validates :username, presence: true
  validates :username, uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
