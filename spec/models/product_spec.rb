require 'spec_helper'

describe Product do
 let(:product) {Product.create(name: "BMW Z8", price: 40000, purchased:"3/4/1998", zip: "93117")}

  it 'should have an id' do
    product.should respond_to(:id)
    product.id.should_not == nil
  end

 it 'should have a name' do
    product.should respond_to(:name)
    product.name.should_not == nil
end

  it 'should have a price' do
    product.should respond_to(:price)
    product.price.should_not == nil
  end

it 'should have a purchased' do
    product.should respond_to(:purchased)
    product.purchased.should_not == nil
  end

it 'should have a zip' do
    product.should respond_to(:zip)
    product.zip.should_not == nil
  end

  it 'should have purchased before current_date' do
    product.should respond_to(:purchased)
    product.purchased.should_not > product.created_at
  end

  it 'should have 5 digits for zip code' do
    product.should respond_to(:zip)
    product.zip.should have(5).number
end
end