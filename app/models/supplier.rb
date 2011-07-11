class Supplier < ActiveRecord::Base
  has_one :commodity
  belongs_to :package
end
