class Report < ApplicationRecord
  belongs_to :user
  has_many :bike_rack_reports
  has_many :lane_reports
  has_many :shop_reports
  has_many :video_reports

  validates :content, presence: true
end
