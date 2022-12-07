class BikeRacksController < ApplicationController
  before_action :set_bike_rack, only: %i[show edit update destroy]

  def index
    @bike_racks = policy_scope(BikeRack)
  end

  def show
    authorize @bike_rack
    @bike_rack_comment = BikeRackComment.new
    @comment = Comment.new
  end

  def new
    @bike_rack = BikeRack.new
    authorize @bike_rack
  end

  def create
    @bike_rack = BikeRack.new(bike_rack_params)
    @bike_rack.user = current_user
    authorize @bike_rack
    if @bike_rack.save
      redirect_to @bike_rack
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @bike_rack
  end

  def update
    authorize @bike_rack
    @bike_rack.update(bike_rack_params)
    if @bike_rack.save
      redirect_to @bike_rack
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @bike_rack
    @bike_rack.destroy
    redirect_to bike_racks_path, status: :see_other
  end

  private

  def set_bike_rack
    @bike_rack = BikeRack.find(params[:id])
  end

  def bike_rack_params
    params.require(:bike_rack).permit(:address, :description, :status, photos: [])
  end
end
