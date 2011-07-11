class Purchase < ActiveRecord::Base
  belongs_to:commodity
  belongs_to:order

  def self.create_from(cart_commodity) 
    purchase = self.new
    purchase.commodity = cart_commodity
    purchase.quantity = cart_commodity.quantity
    purchase.total_price = cart_commodity.price
    return purchase
  end
end
