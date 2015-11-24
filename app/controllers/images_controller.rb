class ImagesController < ApplicationController
  def new
  end

  def create
    image = Image.create(
      url: params[:url],
      product_id: params[:product_id]
      )

    flash[:success] = "Product was successfully created"
    redirect_to action: "index"
  end
end
