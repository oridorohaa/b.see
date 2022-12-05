class VideoLikesController < ApplicationController
  before_action :set_video

  def create
    @video_like = Video.new
    @video_like.user = current_user
    @video_like.video = @video
    @video_like.save
  end

  def destroy
    @video_like = VideoLike.find_by(user: current_user, video: @video)
    @video_like.destroy
  end

  private

  def set_video
    @video = Video.find(params[:video_id])
  end
end
