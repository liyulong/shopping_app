class Commodity < ActiveRecord::Base
  has_many :orders
  belongs_to :supplier


#
#  def initialize(quantity)
#    @quantity = quantity
#  end
#  def quantity
#    @quantity = 1
#  end
##  自动增加数量
#  def increase_quantity
#    @quantity += 1
#  end
#
#  #传入单种商品的总价 价格*数量
#  def total_price
#    @commodity.price * @quantity
#  end
end
