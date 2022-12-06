class BikeRackCommentsController < ApplicationController
  def create
    @bike_rack = BikeRack.find(params[:bike_rack_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    if @comment.save
      @bike_rack_comment = BikeRackComment.new(bike_rack: @bike_rack, comment: @comment)
      if @bike_rack_comment.save
        redirect_to @bike_rack
      else
        render 'bike_racks/show', status: :unprocessable_entity
      end
    else
      render 'bike_racks/show', status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:bike_rack_comment).permit(:content)
  end
end
