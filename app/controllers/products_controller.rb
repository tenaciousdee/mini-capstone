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
    if params[:category]
      @products = Category.find_by(name: params[:category]).products
    end
    
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)

    if params[:id] == "random"
      products = Product.all
      products.sample
    end
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

    flash[:success] = "Product was successfully created"
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
      description: params[:description],
      user_id: current_user.id
      )


    flash[:success] = "Product was successfully updated"
    redirect_to action: "show"
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy

    redirect_to action: "index"
  end

  def search
    search = params[:input_search]
    @products = Product.where("name LIKE ?", "%#{search}%")

    render :index
  end

end
