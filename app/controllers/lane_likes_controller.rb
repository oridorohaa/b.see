class LaneLikesController < ApplicationController
  before_action :set_lane

  def create
    @lane_like = Lane.new
    @lane_like.user = current_user
    @lane_like.lane = @lane
    @lane_like.save
  end

  def destroy
    @lane_like = LaneLike.find_by(user: current_user, lane: @lane)
    @lane_like.destroy
  end

  private

  def set_lane
    @lane = Lane.find(params[:lane_id])
  end
end
