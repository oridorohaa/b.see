class Shop < ApplicationRecord
  belongs_to :user
  has_many :shop_likes, dependent: :destroy
  has_many :shop_comments, dependent: :destroy
  has_many :shop_reports, dependent: :destroy
  has_many_attached :photos, dependent: :destroy

  def has_user_liked?(user)
    self.shop_likes.where(user_id: user.id).present?
  end
end
