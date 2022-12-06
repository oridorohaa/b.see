class VideoLikesController < ApplicationController
  before_action :set_video

  def create
    @video_like = VideoLike.new
    @video_like.user = current_user
    @video_like.video = @video
    authorize @video_like
    if @video_like.save
      redirect_to @video, notice: 'liked'
    else
      redirect_to @video, notice: 'did not save'
    end
  end

  def destroy
    @video_like = VideoLike.find_by(user: current_user, video: @video)
    authorize @video_like
    @video_like.destroy
    redirect_to @video, notice: 'unliked'
  end

  private

  def set_video
    @video = Video.find(params[:video_id])
  end
end
