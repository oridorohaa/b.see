class VideoCommentsController < ApplicationController
  def create
    @video = video.find(params[:video_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    if @comment.save
      @video_comment = VideoComment.new(video: @video, comment: @comment)
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

  def comment_params
    params.require(:video_comment).permit(:content)
  end
end
