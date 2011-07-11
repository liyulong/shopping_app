class Order < ActiveRecord::Base
  has_many :purchases
  belongs_to :package
end
