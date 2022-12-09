class BikeRack < ApplicationRecord
  belongs_to :user
  has_many :bike_rack_likes, dependent: :destroy
  has_many :bike_rack_comments, dependent: :destroy
  has_many :bike_rack_reports, dependent: :destroy
  has_many_attached :photos

  validates :address, presence: true
  validates :address, uniqueness: true
  validates :photos, presence: true, blob: { content_type: ['image/png', 'image/jpg', 'image/jpeg'], size_range: 1..(5.megabytes) }

  def has_user_liked?(user)
    self.bike_rack_likes.where(user_id: user.id).present?
  end
end
