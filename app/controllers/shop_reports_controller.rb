class ShopReportsController < ApplicationController
  before_action :set_shop

  def new
    @report = Report.new
    authorize @report
  end

  def create
    @report = Report.new(report_params)
    @report.user = current_user
    if @report.save
      @shop.status = false
      @shop.save
      @shop_report = ShopReport.new(shop: @shop, report: @report)
      authorize @report
      if @shop_report.save
        redirect_to @shop, notice: "report added"
      else
        render 'shops/show', status: :unprocessable_entity
      end
    else
      render 'shops/show', status: :unprocessable_entity
    end

  end

  def destroy
    @shop_report = ShopReport.find(params[:id])
    authorize @shop_report
    @shop_report.destroy
    @shop.status = true
    @shop.save
    redirect_to @shop, status: :see_other
  end

  private

  def report_params
    params.require(:report).permit(:content)
  end

  def set_shop
    @shop = Shop.find(params[:shop_id])
  end
end
