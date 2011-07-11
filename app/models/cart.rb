class Cart 
  
  attr_reader :commodities
  attr_reader :total_price
  #封装一个数组
  #  def initialize
  #    @purchases = []
  #    @total_price = 0.0
  #  end
  #

#  def add_purchase(commodity)
#    purchase = @purchases.find{|purchase| purchase.commodity_id == commodity.id}
#    if  purchase
#      purchase.quantity += 1
#    else
#      purchase = Purchase.create_from(commodity)
#      @purchases << purchase
#    end
#  end
    #   @total_price += purchase.commodity.price
    #  end
    #
    #  def total_purchases
    #    @purchases.sum { |purchase| purchase.quantity }
    #  end
    #  #END:total_items
    #
    #  #总价格
    #  def total_price
    #    @purchases.sum { |purchase| purchase.price }
    #  end
  end

  #      @purchases << Purchase.create_from(commodity)
  #      @price += commodity.price

