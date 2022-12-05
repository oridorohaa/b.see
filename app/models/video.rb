class Video < ApplicationRecord
  belongs_to :user
  has_many :video_likes
end
