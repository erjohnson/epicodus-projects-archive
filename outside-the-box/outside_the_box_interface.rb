require './lib/outside_the_box'

@box_of_boxes

def main_menu
  loop do
    puts "
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░█▓▒▓█▀██▀█▄░░▄█▀██▀█▓▒▓█░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░█▓▒░▀▄▄▄▄▄█░░█▄▄▄▄▄▀░▒▓█░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░█▓▓▒░░░░░▒▓░░▓▒░░░░░▒▓▓█░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░▒█▀▀█ ▒█▀▀▀█ ▀▄▒▄▀ ▀█▀ ▒█▀▀▀ ▒█░░▒█░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░▒█▀▀▄ ▒█░░▒█ ░▒█░░ ▒█░ ▒█▀▀▀ ▒█▄▄▄█░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░▒█▄▄█ ▒█▄▄▄█ ▄▀▒▀▄ ▄█▄ ▒█░░░ ░░▒█░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

    "
    puts "Press 'b' to add a new box"
    puts "Press 'x' to exit."
    main_choice = gets.chomp
    if main_choice == 'b'
      add_box
    elsif main_choice == 'x'
      puts "Good Day"
      exit
    else
      puts "!UNACCEPTABLE INPUT!"
      gets
    end
  end
end

def add_box
  puts "You will now enter the length of said box:"
  length = gets.chomp
  puts "Very good"
  puts "You will now enter the width of said box:"
  width = gets.chomp
  puts "Excellent\n\n"
  new_box = Box.new(length, width)
  new_box.draw_box
  new_box.find_type
end

main_menu
