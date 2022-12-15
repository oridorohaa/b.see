class VideosController < ApplicationController
  before_action :set_video, only: %i[show edit update destroy]

  def index
    if params[:query].present?
      @videos = policy_scope(Video).search_by_title_and_description(params[:query])
    else
      @videos = policy_scope(Video)
    end
    respond_to do |format|
      format.html
      format.text { render partial: "videos/video_list", locals: { videos: policy_scope(Video) }, formats: [:html] }
    end
  end

  def recent
    @videos = policy_scope(Video)
    authorize @videos
    respond_to do |format|
      format.html
      format.text { render partial: "videos/video_list", locals: { videos: @videos.sort_by { |v| v.created_at }.reverse }, formats: [:html] }
    end
  end

  def most_liked
    @videos = policy_scope(Video)
    authorize @videos
    respond_to do |format|
      format.html
      format.text { render partial: "videos/video_list", locals: { videos: @videos.sort_by { |v| v.video_likes.size }.reverse }, formats: [:html] }
    end
  end

  def maintenance
    @videos = policy_scope(Video).filter { |video| video.tag_list.include?('maintenance') }
    authorize @videos
    respond_to do |format|
      format.html
      format.text { render partial: "videos/video_list", locals: { videos: @videos }, formats: [:html] }
    end
  end

  def repair
    @videos = policy_scope(Video).filter { |video| video.tag_list.include?('repair') }
    authorize @videos
    respond_to do |format|
      format.html
      format.text { render partial: "videos/video_list", locals: { videos: @videos }, formats: [:html] }
    end
  end

  def styling
    @videos = policy_scope(Video).filter { |video| video.tag_list.include?('styling') }
    authorize @videos
    respond_to do |format|
      format.html
      format.text { render partial: "videos/video_list", locals: { videos: @videos }, formats: [:html] }
    end
  end

  def other
    @videos = policy_scope(Video).filter { |video| video.tag_list.include?('other') }
    authorize @videos
    respond_to do |format|
      format.html
      format.text { render partial: "videos/video_list", locals: { videos: @videos }, formats: [:html] }
    end
  end

  # def tagged
  #   if params[:tag].present?
  #     @videos = policy_scope(Video).tagged_with(params[:tag])
  #     authorize @videos
  #   else
  #     @videos = policy_scope(Video).all
  #     authorize @videos
  #   end
  #   render :index
  # end

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
      redirect_to @video, notice: "New VIDEO added"
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
      redirect_to @video, notice: "changes saved"
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
    params.require(:video).permit(:title, :description, :status, :video, tag_list: [])
  end
end
