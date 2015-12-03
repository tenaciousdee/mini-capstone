class OrdersController < ApplicationController
  def create

    order = Order.create(
      user_id: current_user.id,
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total]
    )

    flash[:success] = "Order was successfully created"
    redirect_to "/orders/#{order.id}"

  end

  def show
    @order = Order.find_by(id: params[:id])
  end
end
