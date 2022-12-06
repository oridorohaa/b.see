class LaneLikesController < ApplicationController
  before_action :set_lane

  def create
    @lane_like = LaneLike.new
    @lane_like.user = current_user
    @lane_like.lane = @lane
    if @lane_like.save
      redirect_to @lane, notice: "liked"
    else
      redirect_to @lane, notice: "did not save"
    end

  end

  def destroy
    @lane_like = LaneLike.find_by(user: current_user, lane: @lane)
    @lane_like.destroy
    redirect_to @lane, notice: "unlike"
  end

  private

  def set_lane
    @lane = Lane.find(params[:lane_id])
  end
end
