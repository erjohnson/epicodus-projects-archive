require './lib/cd_org'

def space
  puts "\n"
end

def header
  system 'clear'
  puts "
▒█▀▀█ ▒█▀▀▄ 　 ▒█▀▀▀█ ▒█▀▀█ ▒█▀▀█ ░█▀▀█ ▒█▄░▒█ ▀█▀ ▒█▀▀▀█ ▒█▀▀█
▒█░░░ ▒█░▒█ 　 ▒█░░▒█ ▒█▄▄▀ ▒█░▄▄ ▒█▄▄█ ▒█▒█▒█ ▒█░ ░▄▄▄▀▀ ▒█▄▄▀
▒█▄▄█ ▒█▄▄▀ 　 ▒█▄▄▄█ ▒█░▒█ ▒█▄▄█ ▒█░▒█ ▒█░░▀█ ▄█▄ ▒█▄▄▄█ ▒█░▒█
"
end

def main_menu
  header
  space
  puts "A > Add a new CD"
  puts "L > List all CDs"
  puts "S > Search CDs"
  puts "F > Find all CDs by Artist"
  puts "X > Exit"
  space
  main_choice = gets.chomp.upcase
  if main_choice == "A"
    add_cd
  elsif main_choice == "L"
    list_cds
  elsif main_choice == "S"
    search_cds
  elsif main_choice == "F"
    find_by_artist
  elsif main_choice == "X"
    puts "Fine! Go use iTunes... (ง'̀-'́)ง"
    space
    exit
  else
    system 'clear'
    puts "Invalid! Try again"
  end
end

def add_cd
  system 'clear'
  header
  space
  space
  puts "Enter title of CD to add:"
  title_to_add = gets.chomp
  puts "Enter artist of CD to add:"
  artist_to_add = gets.chomp
  new_cd = CD.new({:title=> title_to_add, :artist=> artist_to_add})
  new_cd.save
  main_menu
end

def list_cds
  system 'clear'
  header
  space
  space
  CD.all.each do |cd|
    puts cd.title + ", " + cd.artist
  end
  space
  puts "M > Main Menu"
  main_choice = gets.chomp.upcase
  if main_choice == "M"
    main_menu
  else
    puts "Invalid! Try again"
  end
end

def search_cds
  system 'clear'
  header
  space
  space
  puts "Enter title of CD to search collection for:"
  title_to_search = gets.chomp
  found_cd = CD.search(title_to_search)
  space
  puts "Result:"
  puts found_cd.title + ", " + found_cd.artist
  space
  puts "M > Main Menu"
  main_choice = gets.chomp.upcase
  if main_choice == "M"
    main_menu
  else
    puts "Invalid! Try again"
  end
end

def find_by_artist
  system 'clear'
  header
  space
  space
  puts "Enter Artist name to search collection for:"
  artist_query = gets.chomp
  found_cds = CD.list_by_artist(artist_query)
  puts "Result(s) for " + artist_query + " :"
  found_cds.each do |cd|
    puts cd.title
  end
  space
  puts "M > Main Menu"
  main_choice = gets.chomp.upcase
  if main_choice == "M"
    main_menu
  else
    puts "Invalid! Try again"
  end
end

main_menu
