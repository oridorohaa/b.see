class LaneCommentsController < ApplicationController
  def create
    @lane = Lane.find(params[:lane_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    if @comment.save
      @lane_comment = Lane.new(lane: @lane, comment: @comment)
      if @lane_comment.save
        redirect_to @lane
      else
        render 'lanes/show', status: :unprocessable_entity
      end
    else
      render 'lanes/show', status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:lane_comment).permit(:content)
  end
end
