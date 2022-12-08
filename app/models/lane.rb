class Lane < ApplicationRecord
  belongs_to :user
  has_many :lane_likes
  has_many :lane_comments
  has_many_attached :photos

  def has_user_liked?(user)
    self.lane_likes.where(user_id: user.id).present?
  end
end
