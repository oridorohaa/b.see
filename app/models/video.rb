class Video < ApplicationRecord
  belongs_to :user
  has_many :video_likes
  has_many :video_comments
  has_many :video_reports
  has_one_attached :video

  acts_as_taggable_on :tags

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :video, presence: true, blob: { content_type: ['video/mov', 'video/mp4', 'video/avi'], size_range: 1..(
                                          87.5.megabytes) }

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
                  against: %i[title description],
                  using: {
                    tsearch: { prefix: true }
                  }

  def has_user_liked?(user)
    self.video_likes.where(user_id: user.id).present?
  end
end
