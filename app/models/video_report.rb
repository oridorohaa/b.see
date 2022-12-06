class VideoReport < ApplicationRecord
  belongs_to :video
  belongs_to :report
end
