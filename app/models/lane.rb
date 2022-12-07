class Lane < ApplicationRecord
  belongs_to :user
  has_many :lane_likes
  has_many :lane_comments
  has_many_attached :photos
end
