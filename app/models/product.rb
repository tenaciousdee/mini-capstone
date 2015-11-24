class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  
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
