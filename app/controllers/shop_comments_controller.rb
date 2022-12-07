class ShopCommentsController < ApplicationController
  before_action :set_shop
  before_action :set_comment

  def create
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

  def destroy
    @shop_comment = ShopComment.find_by(shop: @shop, comment: @comment)
    authorize @shop_comment
    @shop_comment.destroy
    redirect_to @shop, status: :see_other
  end

  private

  def set_shop
    @shop = Shop.find(params[:shop_id])
  end

  def set_comment
    @comment = Comment.new(content: comment_params[:comments][:content])
    @comment.user = current_user
  end

  def comment_params
    params.require(:shop_comment).permit(comments: {})
  end
end
