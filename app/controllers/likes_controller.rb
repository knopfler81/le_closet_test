class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = current_user.id
    @product = params[:product_id]
    likes = {user_id: @user, product_id: @product}
    @like = Like.new(likes)

    @like.save
    if @like.save
      flash[:notice] = "You like this product"
      redirect_to product_path(@product)
    else
      flash[:alert] = "Something went wrong"
      redirect_to product_path(@product)
    end
  end

end
