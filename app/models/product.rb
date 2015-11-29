class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  belongs_to :user
  has_many :orders
  has_many :categorized_products
  
  TAX_RATE = 0.09
  
  def sale_message
    if price > 15
      "Discount Item!"
    else
      "On Sale!"
    end
  end

  def tax
    price * TAX_RATE
  end

  def total
    price + tax
  end
end
