class VideoComment < ApplicationRecord
  belongs_to :video
  belongs_to :comment
end
