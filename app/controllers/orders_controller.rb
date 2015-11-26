class OrdersController < ApplicationController
  def create
    order = Order.create(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id)

    flash[:success] = "Order was successfully created"
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
  end
end
