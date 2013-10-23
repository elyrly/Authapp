class Product < ActiveRecord::Base
  attr_accessible :name, :price, :purchased, :zip
end
