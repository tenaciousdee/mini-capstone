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
      price: params[:price],
      image: params[:image],
      description: params[:description]
      )

    redirect_to action: "index"
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name],
      price: params[:price],
      image: params[:image],
      description: params[:description]
      )

    redirect_to action: "show"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy

    redirect_to action: "index"
  end

end
