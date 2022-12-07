class VideoCommentsController < ApplicationController
  before_action :set_video
  before_action :set_comment

  def create
    if @comment.save
      @video_comment = VideoComment.new(video: @video, comment: @comment)
      authorize @video_comment
      if @video_comment.save
        redirect_to @video
      else
        render 'videos/show', status: :unprocessable_entity
      end
    else
      render 'videos/show', status: :unprocessable_entity
    end
  end

  private

  def set_video
    @video = Video.find(params[:video_id])
  end

  def set_comment
    @comment = Comment.new(content: comment_params[:comments][:content])
    @comment.user = current_user
  end

  def comment_params
    params.require(:video_comment).permit(comments: {})
  end
end
