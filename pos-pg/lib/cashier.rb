class Cashier < ActiveRecord::Base
  def self.login name
    validate :name
    # cashier = Cashier.new(:name => name)
    Cashier.where(:name => name)
  end
end
