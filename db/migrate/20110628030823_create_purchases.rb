class CreatePurchases < ActiveRecord::Migration
  def self.up
    create_table :purchases do |t|
      t.integer :commodity_id
      t.integer :quantity
      t.float :total_price
      t.timestamps
    end
  end

  def self.down
    drop_table :purchases
  end
end
