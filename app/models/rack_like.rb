class BikeRackLike < ApplicationRecord
  belongs_to :bike_rack
  belongs_to :user
end
