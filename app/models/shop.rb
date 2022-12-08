class Shop < ApplicationRecord
  belongs_to :user
  has_many :shop_likes
  has_many :shop_comments
  has_many_attached :photos

  def has_user_liked?(user)
    self.shop_likes.where(user_id: user.id).present?
  end
end
