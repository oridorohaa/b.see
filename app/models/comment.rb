class Comment < ApplicationRecord
  belongs_to :user
  has_many :bike_rack_comments
  has_many :lane_comments
  has_many :shop_comments
  has_many :video_comments

  validates :content, presence: true
end
