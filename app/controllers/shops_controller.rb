class ShopsController < ApplicationController
  before_action :set_shop, only: %i[show edit update destroy]

  def index
    @shops = policy_scope(Shop)
  end

  def show
    authorize @shop
    @shop_comment = ShopComment.new
    @comment = Comment.new
  end

  def new
    @shop = Shop.new
    authorize @shop
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.user = current_user
    authorize @shop
    if @shop.save
      redirect_to @shop
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @shop
  end

  def update
    authorize @shop
    @shop.update(shop_params)
    if @shop.save
      redirect_to @shop
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @shop
    @shop.destroy
    redirect_to shops_path, status: :see_other
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop).permit(:address, :hours, :phone_number, :description, :website, :status, photos: [])
  end
end
