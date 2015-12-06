class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :search]
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
    @product = Product.new
    @suppliers = Supplier.where(active:true)
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier][:supplier_id]
      )

    if @product.update
    flash[:success] = "Product was successfully created"
    redirect_to action: "index"
  else
    render :new
  end
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    if @product.update(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      user_id: current_user.id
      )

    flash[:success] = "Product was successfully updated"
    redirect_to action: "show"
  else
    render :edit
  end
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

  # private

  # def authenticate_admin!
  #   unless current_user && current_user.admin
  #     redirect_to "/"
  #   end
  # end

end
