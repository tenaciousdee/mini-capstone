class UsersController < ApplicationController
  def cart
    @carted = CartedProduct.where(user_id: current_user.id, status: "carted")
  end
end
