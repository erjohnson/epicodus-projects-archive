require 'rspec'
require 'pg'
require 'active_record'
require 'shoulda/matchers'
require 'pry'
require 'product'
require 'cashier'
require 'sale'
require 'cart'


ActiveRecord::Base.establish_connection(YAML::load(File.open('./db/config.yml'))["test"])

RSpec.configure do |config|
  config.after(:each) do
    Product.all.each { |product| product.destroy }
    Cashier.all.each { |cashier| cashier.destroy }
    Sale.all.each { |cashier| cashier.destroy }
  end
end
