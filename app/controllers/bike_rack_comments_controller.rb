class BikeRackCommentsController < ApplicationController
  before_action :set_bike_rack, only: :create
  before_action :set_bike_rack_comment, only: :destroy
  before_action :set_comment, except: :destroy

  def create
    if @comment.save
      @bike_rack_comment = BikeRackComment.new(bike_rack: @bike_rack, comment: @comment)
      authorize @bike_rack_comment
      if @bike_rack_comment.save
        redirect_to @bike_rack
      else
        render 'bike_racks/show', status: :unprocessable_entity
      end
    else
      render 'bike_racks/show', status: :unprocessable_entity
    end
  end

  def destroy
    authorize @bike_rack_comment
    @bike_rack_comment.destroy
    redirect_to @bike_rack, notice: "comment deleted"
  end

  private

  def set_bike_rack
    @bike_rack = BikeRack.find(params[:bike_rack_id])
  end

  def set_bike_rack_comment
    @bike_rack_comment = BikeRackComment.find(params[:id])
  end

  def set_comment
    @comment = Comment.new(content: comment_params[:comments][:content])
    @comment.user = current_user
  end

  def comment_params
    params.require(:bike_rack_comment).permit(comments: {})
  end
end
