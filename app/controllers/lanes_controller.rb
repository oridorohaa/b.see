class LanesController < ApplicationController
  before_action :set_lane, only: %i[show edit update destroy]

  def index
    @lanes = policy_scope(Lane)
  end

  def show
    authorize @lane
  end

  def new
    @lane = Lane.new
    authorize @lane
  end

  def create
    @lane = Lane.new(lane_params)
    @lane.user = current_user
    authorize @lane
    if @lane.save
      redirect_to @lane
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @lane
  end

  def update
    authorize @lane
    @lane.update(lane_params)
    if @lane.save
      redirect_to @lane
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @lane
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
