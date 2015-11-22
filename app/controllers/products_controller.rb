class ProductsController < ApplicationController
  def index
    @products = Product.all

    sort_price = params[:sort]
    sort_order = params[:sort_order]
    if sort_price && sort_order
      @products = Product.order(sort_price => sort_order)
    end

    sort_sale = params[:sort_sale]
    if sort_sale
      @products = Product.where("price < ?", 13)
    end

    sort_random = params[:sort_random]
    if sort_random
      @products = Product.where("name = ?", sort_random)
  end
    
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
  end

  def new
  end

  def create
    product = Product.create(
      name: params[:name],
      price: params[:price],
      image: params[:image],
      description: params[:description]
      )

    flash[:success] = "Contact was successfully created"
    redirect_to action: "index"
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    product = Product.find_by(id: params[:id])
    product.update(
      name: params[:name],
      price: params[:price],
      image: params[:image],
      description: params[:description]
      )


    flash[:success] = "Contact was successfully updated"
    redirect_to action: "show"
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy

    redirect_to action: "index"
  end

end
