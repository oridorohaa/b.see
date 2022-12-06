class ShopComment < ApplicationRecord
  belongs_to :shop
  belongs_to :comment
end
