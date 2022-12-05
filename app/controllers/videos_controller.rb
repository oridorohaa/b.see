class VideosController < ApplicationController
  before_action :set_video, only: %i[show edit update destroy]

  def index
    @videos = Video.all
  end

  def show
    # show
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(shop_params)
    @video.user = current_user
    if @video.save
      redirect_to @video
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # edit
  end

  def update
    @video.update(video_params)
    if @video.save
      redirect_to @video
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @video.destroy
    redirect_to videos_path, status: :see_other
  end

  private

  def set_video
    @video = Video.find(params[:id])
  end

  def video_params
    params.require(:video).permit(:title, :description, :status)
  end
end
