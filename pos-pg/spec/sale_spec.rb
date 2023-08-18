require 'spec_helper'

describe 'Sale' do
  it 'updates the total cost for the sale when saved to the database' do
    sale = Sale.create
    product1 = Product.create(:name => 'hockey mask', :price => 1.00)
    product2 = Product.create(:name => 'dirt bike', :price => 1.00)
    p_id1 = product1.id
    p_id2 = product2.id
    cart1 = Cart.create(:product_id => p_id1, :sale_id => sale.id)
    cart2 = Cart.create(:product_id => p_id2, :sale_id => sale.id)
    sale.get_total
    expect(sale.total).to eq 2.00
  end
end
