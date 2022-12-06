class ShopLikesController < ApplicationController
  before_action :set_shop

  def create
    @shop_like = ShopLike.new
    @shop_like.user = current_user
    @shop_like.shop = @shop
    if @shop_like.save
      redirect_to @shop, notice: 'liked'
    else
      redirect_to @shop, notice: 'did not save'
    end

  end

  def destroy
    @shop_like = ShopLike.find_by(user: current_user, shop: @shop)
    @shop_like.destroy
    redirect_to @shop, notice: "unlike"
  end

  private

  def set_shop
    @shop = Shop.find(params[:shop_id])
  end
end
