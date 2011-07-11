class SuppliersController < ApplicationController
  def show

  end
  def new
    @supplier = Supplier.new
  end
  def create
    @supplier = Supplier.new(params[:supplier])
  end
  def index
    @suppliers = Supplier.all
  end
  def cart_buy
    commodity_ids = []
    params[:commodity_id].split(",").each {|i| commodity_ids << i.to_i}
    @commodities=Commodity.find(commodity_ids)
    @suppliers =[]
    @commodities.each do |commodity|
      unless @suppliers.include?(commodity.supplier)
        @suppliers << commodity.supplier
      end
    end
    hash = {}
    @packages = []
    @suppliers.each do |supplier|
      @package = Package.create(:name=>supplier.name,:supplier_id =>supplier.id)
      @packages << @package
      hash[supplier.id] = @package.id
    end
    @commodities.each do|commodity|
        @price = commodity.price.to_i * (params["num#{commodity.id}"].to_i) + Supplier.find(commodity.supplier_id).postage
     if @price>5000.to_f
       @price = commodity.price.to_i * (params["num#{commodity.id}"].to_i)
      end
      @order = Order.create(:package_id=>hash[commodity.supplier_id],:supplier_id=>commodity.supplier_id,:commodity_id=>commodity.id, :amount=>params["num#{commodity.id}"],:order_price => @price)
    end
  end
  def package
    num = params[:num]
    @commodity = Commodity.find_by_id(params[:id])
    @supplier = @commodity.supplier
    @package = Package.create(:name=>@supplier.name,:supplier_id =>@supplier.id)
    total_price = @commodity.price * num.to_i + @supplier.postage
    if total_price >5000
      total_price = @commodity.price * num.to_i
    end
    @order = Order.create(:package_id =>@package.id,:commodity_id=>@commodity.id,:supplier_id=>@supplier.id, :amount=>num, :order_price =>total_price)
  end
end
