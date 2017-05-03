class LikesController < ApplicationController
  before_action :find_product, only: :create

  def like
    @like = Like.find(params[:id])
    @like.upvote
  end


  def create
    @like = Like.new(like_params)
    @like.user = current_user
    @like.product = @product
  end

  private

  def like_params
    params.require(:like).permit(:liked, :user_id, :product_id)
  end

  def find_product
    @product = Product.find(params[:product_id])
  end

end
