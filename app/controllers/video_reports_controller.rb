class VideoReportsController < ApplicationController
  before_action :set_video

  def new
    @report = Report.new
    authorize @report
  end

  def create
    @report = Report.new(report_params)
    @report.user = current_user
    if @report.save
      @video.status = false
      @video.save
      @video_report = VideoReport.new(video: @video, report: @report)
      authorize @report
      if @video_report.save
        redirect_to @video, notice: "report added"
      else
        render 'videos/show', status: :unprocessable_entity
      end
    else
      render 'videos/show', status: :unprocessable_entity
    end
  end

  private

  def report_params
    params.require(:report).permit(:content)
  end

  def set_video
    @video = Video.find(params[:video_id])
  end
end
