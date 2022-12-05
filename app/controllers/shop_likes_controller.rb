class ShopLikesController < ApplicationController
  before_action :set_shop

  def create
    @shop_like = Shop.new
    @shop_like.user = current_user
    @shop_like.shop = @shop
    @shop_like.save
  end

  def destroy
    @shop_like = ShopLike.find_by(user: current_user, shop: @shop)
    @shop_like.destroy
  end

  private

  def set_shop
    @shop = Shop.find(params[:shop_id])
  end
end
