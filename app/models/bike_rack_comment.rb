class BikeRackComment < ApplicationRecord
  belongs_to :bike_rack
  belongs_to :comment
end
