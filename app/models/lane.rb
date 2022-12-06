class Lane < ApplicationRecord
  belongs_to :user
  has_many :lane_likes
  has_many :lane_comments
end
