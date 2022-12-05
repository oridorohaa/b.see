class BikeRacksController < ApplicationController
  before_action :set_rack, only: %i[show edit update destroy]

  def index
    @rack = BikeRack.all
  end

  def show
    # show
  end

  def new
    @rack = BikeRack.new
  end

  def create
    @rack = BikeRack.new(rack_params)
    @rack.user = current_user
    if @rack.save
      redirect_to @rack
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # edit
  end

  def update
    @rack.update(rack_params)
    if @rack.save
      redirect_to @rack
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @rack.destroy
    redirect_to racks_path, status: :see_other
  end

  private

  def set_rack
    @rack = BikeRack.find(params[:id])
  end

  def rack_params
    params.require(:bike_rack).permit(:address, :description, :status)
  end
end
