class Product < ActiveRecord::Base
  attr_accessible :name, :price, :purchased
end
