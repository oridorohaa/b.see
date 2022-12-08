class BikeRack < ApplicationRecord
  belongs_to :user
  has_many :bike_rack_likes, dependent: :destroy
  has_many :bike_rack_comments, dependent: :destroy
  has_many :bike_rack_reports, dependent: :destroy
  has_many_attached :photos

  def has_user_liked?(user)
    self.bike_rack_likes.where(user_id: user.id).present?
  end
end
