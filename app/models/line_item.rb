class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :cart, :quantity
  attr_accessible :product

  belongs_to :order
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end
end
