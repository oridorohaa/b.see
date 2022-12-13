class ShopCommentsController < ApplicationController
  before_action :set_shop, only: :create
  before_action :set_shop_comment, only: :destroy
  before_action :set_comment, except: :destroy

  def create
    if @comment.save
      @shop_comment = ShopComment.new(shop: @shop, comment: @comment)
      authorize @shop_comment
      if @shop_comment.save
        redirect_to @shop, notice: "Comment added"
      else
        render 'shops/show', status: :unprocessable_entity
      end
    else
      render 'shops/show', status: :unprocessable_entity
    end
  end

  def destroy
    authorize @shop_comment
    @shop_comment.destroy
    redirect_back(fallback_location: root_path, notice: "comment deleted")
  end

  private

  def set_shop
    @shop = Shop.find(params[:shop_id])
  end

  def set_shop_comment
    @shop_comment = ShopComment.find(params[:shop_id])
  end

  def set_comment
    @comment = Comment.new(content: comment_params[:comments][:content])
    @comment.user = current_user
  end

  def comment_params
    params.require(:shop_comment).permit(comments: {})
  end
end
