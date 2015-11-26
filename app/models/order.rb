class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  def product_tax
    product.tax * quantity
  end

  def product_subtotal
    product.price * quantity
  end

  def product_total
    product_subtotal + product_tax
  end

end
