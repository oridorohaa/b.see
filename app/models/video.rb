class Video < ApplicationRecord
  belongs_to :user
  has_many :video_likes
  has_many :video_comments
  has_one_attached :video

  def has_user_liked?(user)
    self.video_likes.where(user_id: user.id).present?
  end
end
