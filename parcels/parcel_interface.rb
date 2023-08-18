require './lib/parcels'

@parcels_list = []

def main_menu
  loop do
    puts "
░░░░░░░░░░░░░░░░░░░░█░░░░░░░░░░░░░░░░░░░░▀▀▀▀█▀▀▀▀░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░▄▄█▄▄░░░░░░░░░░░░░░░░░░─▄▀█▀▀█──────▄░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░▀▀▀██▀▀▀██▀▀▀░░░░░░░░░░░░░░█▄▄█▄▄██████▀░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░▄▄▄▄▄▄▄███████▄▄▄▄▄▄▄░░░░░░░░░░▀▀█▀▀▀█▀▀░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░█▄█░░▀██▄██▀░░█▄█░░░░░░░░░░░░─▀▀▀▀▀▀▀░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
▀▀█▀▀ ▒█▀▀▀█ ▒█▄░▒█ ▒█░▄▀ ░█▀▀█ 　 ▒█▀▀▀█ ▒█░▒█ ▀█▀ ▒█▀▀█ ▒█▀▀█ ▀█▀ ▒█▄░▒█ ▒█▀▀█
░▒█░░ ▒█░░▒█ ▒█▒█▒█ ▒█▀▄░ ▒█▄▄█ 　 ░▀▀▀▄▄ ▒█▀▀█ ▒█░ ▒█▄▄█ ▒█▄▄█ ▒█░ ▒█▒█▒█ ▒█░▄▄
░▒█░░ ▒█▄▄▄█ ▒█░░▀█ ▒█░▒█ ▒█░▒█ 　 ▒█▄▄▄█ ▒█░▒█ ▄█▄ ▒█░░░ ▒█░░░ ▄█▄ ▒█░░▀█ ▒█▄▄█

    "
    puts "TONKA SHIPPING"
    puts "Press 'a' to add a new parcel or 'l' to list your parcels."
    puts "Press 'm' to modify an existing parcel or 'x' to exit."
    main_choice = gets.chomp
    if main_choice == 'a'
      add_parcel
    elsif main_choice == 'l'
      list_parcels
    elsif main_choice == 'm'
      modify_parcel
    elsif main_choice == 'x'
      puts "Good riddance..."
      puts "──▄█▀█▄─────────██
▄████████▄───▄▀█▄▄▄▄
██▀▼▼▼▼▼─▄▀──█▄▄
█████▄▲▲▲─▄▄▄▀───▀▄
██████▀▀▀▀─▀────────▀▀
"
      exit
    else
      puts "Sry"
      puts "▄██████████████▄▐█▄▄▄▄█▌
██████▌▄▌▄▐▐▌███▌▀▀██▀▀
████▄█▌▄▌▄▐▐▌▀███▄▄█▌
▄▄▄▄▄██████████████▀
"
    end
  end
end

def add_parcel
  puts "Enter the height of the parcel:"
  height = gets.chomp
  puts "Enter the length of the parcel:"
  length = gets.chomp
  puts "Enter the width of the parcel:"
  width = gets.chomp
  puts "Enter the weight of the parcel:"
  weight = gets.chomp
  @parcels_list << Parcel.new(height.to_i, length.to_i, width.to_i, weight.to_i)
  puts "Your parcel has been added!\n\n"
end

def list_parcels
  puts "Her is u parcelz:"
  @parcels_list.each do |parcel|
    puts (@parcels_list.index(parcel) + 1).to_s + ")  $" + parcel.cost_to_ship.to_s + ".98"
  end
  puts "\n"
end

def modify_parcel
  puts "Please choose parcel number to modify:"
  box_num = gets.chomp
  puts "Enter the height of the parcel:"
  height = gets.chomp
  puts "Enter the length of the parcel:"
  length = gets.chomp
  puts "Enter the width of the parcel:"
  width = gets.chomp
  puts "Enter the weight of the parcel:"
  weight = gets.chomp
  @parcels_list[box_num.to_i - 1].modify(height.to_i, length.to_i, width.to_i, weight.to_i)
  puts "Parcel updated!\n\n"
end

main_menu
