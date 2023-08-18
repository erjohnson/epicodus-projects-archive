class Sale < ActiveRecord::Base
  has_one :cashier
  has_many :carts
  has_many :products, through: :carts

  def get_total
    total = 0
    results = Cart.products_by_sale(self.id)
    results.each do |x|
      total += x.price
    end
    self.total = total
    self.save
  end

end
