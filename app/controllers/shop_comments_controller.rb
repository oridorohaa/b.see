class ShopCommentsController < ApplicationController
  def create
    @shop = shop.find(params[:shop_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    if @comment.save
      @shop_comment = ShopComment.new(shop: @shop, comment: @comment)
      authorize @shop_comment
      if @shop_comment.save
        redirect_to @shop
      else
        render 'shops/show', status: :unprocessable_entity
      end
    else
      render 'shops/show', status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:shop_comment).permit(:content)
  end
end
