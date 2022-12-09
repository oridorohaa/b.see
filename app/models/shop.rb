class Shop < ApplicationRecord
  belongs_to :user
  has_many :shop_likes, dependent: :destroy
  has_many :shop_comments, dependent: :destroy
  has_many :shop_reports, dependent: :destroy
  has_many_attached :photos, dependent: :destroy

  validates :address, :hours, :name, presence: true
  validates :address, uniqueness: true
  validates :photos, presence: true, blob: { content_type: ['image/png', 'image/jpg', 'image/jpeg'], size_range: 1..(5.megabytes) }

  def has_user_liked?(user)
    self.shop_likes.where(user_id: user.id).present?
  end
end
