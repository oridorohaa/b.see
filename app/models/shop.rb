class Shop < ApplicationRecord
  belongs_to :user
  has_many :shop_likes
  has_many :shop_comments
  has_many_attached :photos
end
