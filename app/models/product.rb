class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  belongs_to :user
  has_many :categorized_products
  has_many :categories, through: :categorized_products
  has_many :carted_products
  has_many :orders, through: :carted_products

  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: true
  
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

  def printable_categories
    names = []
    categories.each do |category|
      names << category.name.capitalize
    end
    names.join(', ')
  end
end
