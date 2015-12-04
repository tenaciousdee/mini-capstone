class OrdersController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @carted = CartedProduct.where(user_id: current_user.id, status: "carted")

    @order = Order.create(
      user_id: current_user.id,
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total]
    )

    @carted.update_all(status: "purchased", order_id: @order.id)

    flash[:success] = "Order was successfully created"
    redirect_to "/orders/#{@order.id}"

  end

  def show
    @order = Order.find_by(id: params[:id])
  end
end
