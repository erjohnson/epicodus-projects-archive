require 'spec_helper'

describe 'Product' do
  it 'creates a new product in the database' do
    test_product = Product.create(:name => 'hockey mask', :price => 10.44)
    expect(Product.all.first.price).to eq 10.44
  end

  it 'lets you read the product name' do
    test_product = Product.create(:name => 'tooth necklace', :price => 99.99)
    expect(Product.where(:price => 99.99).first.name).to eq 'tooth necklace'
  end

  it 'lets you delete a product from the database' do
    test_product = Product.create(:name => 'tooth necklace', :price => 99.99)
    test_product2 = Product.create(:name => 'hockey mask', :price => 10.44)
    Product.destroy_all(:name => 'tooth necklace')
    expect(Product.all).to eq [test_product2]
  end

  it 'lets you update a product name' do
    test_product = Product.create(:name => 'tooth necklace', :price => 99.99)
    product = Product.where(:name => 'tooth necklace').first
    product.name = 'tooth bracelet'
    product.save
    expect(Product.all.first.name).to eq 'tooth bracelet'
  end
end
