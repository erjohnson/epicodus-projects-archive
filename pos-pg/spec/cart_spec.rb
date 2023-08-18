require 'spec_helper'

describe 'Cart' do
  it 'returns products by sale' do
    product1 = Product.create(:name => 'hockey mask', :price => 1.00)
    product2 = Product.create(:name => 'dirt bike', :price => 1.00)
    p_id1 = product1.id
    p_id2 = product2.id
    sale = Sale.create
    cart1 = Cart.create(:product_id => p_id1, :sale_id => sale.id)
    cart2 = Cart.create(:product_id => p_id2, :sale_id => sale.id)
    expect(Cart.products_by_sale(sale.id)).to eq [product1, product2]
  end
end
