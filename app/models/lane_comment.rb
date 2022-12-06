class LaneComment < ApplicationRecord
  belongs_to :lane
  belongs_to :comment
end
