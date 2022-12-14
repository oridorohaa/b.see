class LaneReportsController < ApplicationController
  before_action :set_lane

  def new
    @report = Report.new
    authorize @report
  end

  def create
    @report = Report.new(report_params)
    @report.user = current_user
    if @report.save
      @lane.status = false
      @lane.save
      @lane_report = LaneReport.new(lane: @lane, report: @report)
      authorize @report
      if @lane_report.save
        redirect_to @lane, notice: "report added"
      else
        render :new, status: :unprocessable_entity
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @lane_report = LaneReport.find(params[:id])
    authorize @lane_report
    @lane_report.destroy
    @lane.status = true
    @lane.save
    redirect_to @lane, status: :see_other
  end

  private

  def report_params
    params.require(:report).permit(:content)
  end

  def set_lane
    @lane = Lane.find(params[:lane_id])
  end
end
