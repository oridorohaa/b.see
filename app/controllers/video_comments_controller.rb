class VideoCommentsController < ApplicationController
  before_action :set_video, only: :create
  before_action :set_comment, except: :destroy
  before_action :set_video_comment, only: :destroy

  def create
    if @comment.save
      @video_comment = VideoComment.new(video: @video, comment: @comment)
      authorize @video_comment
      if @video_comment.save
        redirect_to @video, notice: "comment added"
      else
        render 'videos/show', status: :unprocessable_entity
      end
    else
      render 'videos/show', status: :unprocessable_entity
    end
  end

  def destroy
    authorize @video_comment
    @video_comment.destroy
    redirect_back(fallback_location: root_path, notice: "comment deleted")
  end

  private

  def set_video
    @video = Video.find(params[:video_id])
  end

  def set_video_comment
    @video_comment = VideoComment.find(params[:video_id])
  end

  def set_comment
    @comment = Comment.new(content: comment_params[:comments][:content])
    @comment.user = current_user
  end

  def comment_params
    params.require(:video_comment).permit(comments: {})
  end
end
