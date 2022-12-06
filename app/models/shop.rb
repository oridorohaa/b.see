class Shop < ApplicationRecord
  belongs_to :user
  has_many :shop_likes
  has_many :shop_comments
end
