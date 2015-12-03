class UsersController < ApplicationController
  def cart
    @carted = CartedProduct.where(user_id: current_user.id, status: "carted")

    @subtotal = []
    @carted.each do |cart|
      @subtotal << cart.product.price * cart.quantity
    end

    @subtotal = @subtotal.sum

    @tax = @subtotal * Product::TAX_RATE

    @total = @subtotal + @tax

  end
end
