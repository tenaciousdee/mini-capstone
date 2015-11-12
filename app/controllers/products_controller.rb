class ProductsController < ApplicationController
  def all
    @products = Product.all
  end
end
