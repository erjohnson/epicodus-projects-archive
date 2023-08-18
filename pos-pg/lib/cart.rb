class Cart < ActiveRecord::Base
  has_many :products
  has_many :sales

  def self.products_by_sale id
    results = Cart.where(:sale_id => id).all
    results = results.map do |result|
      result.product_id
    end
    results = results.map do |res|
      Product.where(:id => res)
    end
    results.flatten
  end
end
