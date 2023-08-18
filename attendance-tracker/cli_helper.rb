require './lib/user'
require './lib/timestamp'

def whitespace
  puts "\n"
end

def header
  system 'clear'
  puts "##################"
  puts "ATTENDANCE TRACKER"
  puts "##################"
  puts "I'm Here!"
  whitespace
end

def main_options
  puts "H > Mark Yourself Here"
  puts "S > Show all students"
  puts "T > View Attendance"
  puts "A > Generate sample data"
  puts "X > Exit"
  whitespace
end

def times_list
  TimeStamp.all.each do |result|
    puts result.time + " - " + result.user_name
  end
  whitespace
end

def make_sample_data
  names = ['Rolando', 'Mira', 'Leland', 'Brielle', 'Cameron', 'Sunburst']

  names.each do |name|
    new_user = User.login(name)
    new_time = TimeStamp.new(new_user.name)
    new_time.sample_time_one
    new_time.save
  end

  names.each do |name|
    new_user = User.login(name)
    new_time = TimeStamp.new(new_user.name)
    new_time.sample_time_two
    new_time.save
  end

  main_menu
end
