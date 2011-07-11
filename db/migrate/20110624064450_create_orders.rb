class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :package_id
      t.integer :supplier_id
      t.integer :amount
      t.integer :commodity_id
      t.float :order_price

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
