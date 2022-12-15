class LaneLikesController < ApplicationController
  before_action :set_lane

  def create
    @lane_like = LaneLike.new
    @lane_like.user = current_user
    @lane_like.lane = @lane
    authorize @lane_like
    if @lane_like.save
      redirect_to @lane
    else
      redirect_to @lane, notice: "did not save"
    end

  end

  def destroy
    @lane_like = LaneLike.find_by(user: current_user, lane: @lane)
    authorize @lane_like
    @lane_like.destroy
    redirect_to @lane
  end

  private

  def set_lane
    @lane = Lane.find(params[:lane_id])
  end
end
