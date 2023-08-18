require 'pg'
require 'active_record'
require './lib/product'
require './lib/cashier'
require './lib/sale'
require './lib/cart'
require 'pry'


ActiveRecord::Base.establish_connection(YAML::load(File.open('./db/config.yml'))["development"])


def ws
  puts ''
end

def clear
  system('clear')
end

def prompt(text = "")
  print text + "  >   "
  gets.chomp
end

def header
  clear
  puts "####"
  puts "POS"
  puts "####"
  ws
end

def main_menu
  header

  puts "L > Login"
  puts "A > Add new product"
  puts "X > Exit"

  case prompt().upcase
  when 'L'
    cashier_login
  when 'A'
    new_product
  when 'X'
    exit
  end
end

def cashier_login
  header
  name = prompt("Enter your name to login!")
  if !Cashier.login(name).first
     puts "Cashier not found, please add a new cashier"
     sleep 1.5
     add_cashier
  else
    login_cashier = Cashier.login(name).first
    puts "Login successful!"
    sleep 0.8
    make_sale(login_cashier)
  end
end

def make_sale login_cashier
  header
  c_id = login_cashier.id

  puts "N > New sale"
  puts "M > Main menu"

  case prompt().upcase
  when 'N'
    new_sale = Sale.create(:cashier_id => c_id)
    new_sale
    charge_products(new_sale)
  when 'M'
    main_menu
  end
end

def charge_products new_sale
  header
  sale = new_sale
  puts "Current sale:"
  Cart.products_by_sale(sale.id).each do |item|
    puts "$" + item.price.to_s + " - " + item.name
  end
  ws
  puts "Products to add"
  Product.all.each do |item|
    puts item.id.to_s + ") " + "$" + item.price.to_s + " - " + item.name
  end
  num = prompt("Enter product # to add to the sale:").to_i
  Cart.create(:sale_id => sale.id, :product_id => num)
  charge_products(sale)
end

main_menu





