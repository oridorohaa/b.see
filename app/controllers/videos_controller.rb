class VideosController < ApplicationController
  before_action :set_video, only: %i[show edit update destroy]

  def index
    if params[:query].present?
      @videos = policy_scope(Video).search_by_title_and_description(params[:query])
    else
      @videos = policy_scope(Video)
    end
  end

  def show
    authorize @video
    @video_comment = VideoComment.new
    @comment = Comment.new
  end

  def new
    @video = Video.new
    authorize @video
  end

  def create
    @video = Video.new(video_params)
    @video.user = current_user
    authorize @video
    if @video.save
      redirect_to @video
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @video
  end

  def update
    authorize @video
    @video.update(video_params)
    if @video.save
      redirect_to @video
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @video
    @video.destroy
    redirect_to videos_path, status: :see_other
  end

  private

  def set_video
    @video = Video.find(params[:id])
  end

  def video_params
    params.require(:video).permit(:title, :description, :status, :video)
  end
end
