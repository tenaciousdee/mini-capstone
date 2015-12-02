class CartedProductsController < ApplicationController
  def create
    carted_product = CartedProduct.create(
      user_id: current_user.user_id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted"
      )

    flash[:success] = "Product was successfully added to the cart"
    redirect_to "/users/#{current_user.id}/cart"
  end

  def show
  end
end
