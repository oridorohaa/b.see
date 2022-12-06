class ReportsController < ApplicationController
  before_action :set_rack

  def new
    @report = Report.new
    authorize @report
  end

  def create
    @report = Report.new(report_params)
    @report.user = current_user
    if @report.save
      @bike_rack_report = BikeRackReport.new(bike_rack: @rack, report: @report)
      authorize @report
      if @bike_rack_report.save
        redirect_to @rack, notice: "report added successfully"

      else
        render 'bike_racks/show', status: :unprocessable_entity
      end
    else
      render 'bike_racks/show', status: :unprocessable_entity
    end
  end

  private

  def report_params
    params.require(:report).permit(:content)
  end

  def set_rack
    @rack = BikeRack.find(params[:bike_rack_id])
  end
end
