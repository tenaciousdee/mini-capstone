class CartedProductsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted"
      )

    flash[:success] = "Product was successfully added to the cart"
    redirect_to "/users/#{current_user.id}/cart"
  end

  def edit
  end

  def show
  end

  def destroy
  end
end
