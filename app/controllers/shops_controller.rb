class ShopsController < ApplicationController
  before_action :set_shop, only: %i[show edit update destroy]

  def index
    @shops = Shop.all
  end

  def show
    # show
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.user = current_user
    if @shop.save
      redirect_to @shop
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # edit
  end

  def update
    @shop.update(shop_params)
    if @shop.save
      redirect_to @shop
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @shop.destroy
    redirect_to shops_path, status: :see_other
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop).permit(:address, :hours, :phone_number, :description, :website, :status)
  end
end
