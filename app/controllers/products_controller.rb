class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
  end

  def new
  end

  def create
    @product = Product.create(
      name: params[:name],
      price: params[:image],
      image: params[:image],
      description: params[:description]
      )

    redirect_to action: "index"
  end
end
