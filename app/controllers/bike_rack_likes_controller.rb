class BikeRackLikesController < ApplicationController
  before_action :set_bike_rack

  def create
    @bike_rack_like = BikeRackLike.new
    @bike_rack_like.user = current_user
    @bike_rack_like.bike_rack = @bike_rack
    @bike_rack_like.save
  end

  def destroy
    @bike_rack_like = BikeRackLike.where(user: current_user, bike_rack: @bike_rack)
    @bike_rack_like.destroy
  end

  private

  def set_bike_rack
    @bike_rack = BikeRack.find(params[:bike_rake_id])
  end
end
