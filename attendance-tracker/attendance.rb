require './cli_helper.rb'

def main_menu
  header
  main_options
  case gets.chomp.upcase
  when 'H'
    login
  when 'S'
    show_students
  when 'T'
    show_times
  when 'A'
    make_sample_data
  when 'X'
    exit
  end
end

def login
  header
  puts "Please enter your name:"
  name = gets.chomp
  User.login(name)
  TimeStamp.new(name).save
  main_menu
end

def show_times
  header
  times_list
  puts "S > Show times by student"
  puts "M > Main Menu"
  whitespace
  case gets.chomp.upcase
  when 'S'
    find_student_times
  when 'M'
    main_menu
  end
end

def find_student_times
  header
  times_list
  puts "Enter the name of a student:"
  name = gets.chomp
  student_times(name)
end

def student_times name
  header
  puts name
  puts "-------------"
  TimeStamp.find(name).each do |result|
    puts result.time
  end
  whitespace
  puts "M > Main Menu"
  whitespace
  case gets.chomp.upcase
  when 'M'
    main_menu
  end
end

def show_students
  header
  User.all.each_with_index do |result, index|
    puts index.to_s + ") " + result.name
  end
  whitespace
  puts "R > Remove a student"
  puts "M > Main Menu"
  whitespace
  case gets.chomp.upcase
  when 'R'
    puts "Enter the name of the student you wish to remove:"
    User.find(gets.chomp).remove
    show_students
  when 'M'
    main_menu
  end
end

main_menu
