class BikeRackReportsController < ApplicationController
  before_action :set_rack

  def new
    @report = Report.new
    authorize @report
  end

  def create
    @report = Report.new(report_params)
    @report.user = current_user
    if @report.save
      @rack.status = false
      @rack.save
      @bike_rack_report = BikeRackReport.new(bike_rack: @rack, report: @report)
      authorize @report
      if @bike_rack_report.save
        redirect_to @rack, notice: "report added"
      else
        render :new, status: :unprocessable_entity
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bike_rack_report = BikeRackReport.find(params[:id])
    authorize @bike_rack_report
    @bike_rack_report.destroy
    @rack.status = true
    @rack.save
    redirect_to @rack, status: :see_other
  end

  private

  def report_params
    params.require(:report).permit(:content)
  end

  def set_rack
    @rack = BikeRack.find(params[:bike_rack_id])
  end
end
