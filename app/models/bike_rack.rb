class BikeRack < ApplicationRecord
  belongs_to :user
  has_many :bike_rack_likes
  has_many :bike_rack_comments
end
