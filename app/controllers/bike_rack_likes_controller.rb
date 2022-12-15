class BikeRackLikesController < ApplicationController
  before_action :set_bike_rack

  def create
    @bike_rack_like = BikeRackLike.new
    @bike_rack_like.user = current_user
    @bike_rack_like.bike_rack = @bike_rack
    authorize @bike_rack_like
    if @bike_rack_like.save
      redirect_to @bike_rack
    else
      redirect_to @bike_rack, notice: 'did not save'
    end
  end

  def destroy
    @bike_rack_like = BikeRackLike.find_by(user: current_user, bike_rack: @bike_rack)
    authorize @bike_rack_like
    @bike_rack_like.destroy
    redirect_to @bike_rack
  end

  private

  def set_bike_rack
    @bike_rack = BikeRack.find(params[:bike_rack_id])
  end
end
