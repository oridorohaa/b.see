class LaneCommentsController < ApplicationController
  before_action :set_lane
  before_action :set_comment

  def create
    if @comment.save
      @lane_comment = LaneComment.new(lane: @lane, comment: @comment)
      authorize @lane_comment
      if @lane_comment.save
        redirect_to @lane
      else
        render 'lanes/show', status: :unprocessable_entity
      end
    else
      render 'lanes/show', status: :unprocessable_entity
    end
  end

  def destroy
    @lane_comment = LaneComment.find_by(lane: @lane, comment: @comment)
    authorize @lane_comment
    @lane_comment.destroy
    redirect_to @lane, status: :see_other
  end

  private

  def set_lane
    @lane = Lane.find(params[:lane_id])
  end

  def set_comment
    @comment = Comment.new(content: comment_params[:comments][:content])
    @comment.user = current_user
  end

  def comment_params
    params.require(:lane_comment).permit(comments: {})
  end
end
