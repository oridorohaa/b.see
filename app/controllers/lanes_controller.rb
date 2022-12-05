class LanesController < ApplicationController
  before_action :set_lane, only: %i[show edit update destroy]

  def index
    @lanes = Lane.all
  end

  def show
    # show
    @lane = Lane.find(params[:id])
  end

  def new
    @lane = Lane.new
  end

  def create
    @lane = Lane.new(lane_params)
    @lane.user = current_user
    if @lane.save
      redirect_to @lane
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # edit
    @lane = Lane.find(params[:id])
  end

  def update
    @lane.update(lane_params)
    if @lane.save
      redirect_to @lane
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @lane.destroy
    redirect_to lanes_path, status: :see_other
  end

  private

  def set_lane
    @lane = Lane.find(params[:id])
  end

  def lane_params
    params.require(:lane).permit(:street_name, :start_point, :end_point, :drescription, :status)
  end
end
