require './lib/lists'
require './lib/tasks'

@to_do_lists = []
@list_names =[]

def main_menu
  system 'clear'
  loop do
    puts "
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░▒█░░░░░▀░░█▀▀░▀▀█▀▀░█░░░█▀▀░█▀▀░█▀▀░░
░▒█░░░░▀█▀░▀▀█░░░█░░░█░░░█▀▀░▀▀█░▀▀█░░
░▒█▄▄█░▀▀▀░▀▀▀░░░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
\n\n"
    puts "Please select choice:"
    puts "N > New list"
    puts "S > Show lists"
    puts "X > Exit"
    main_choice = gets.chomp
    main_choice.upcase!
    if main_choice == "N"
      add_list
    elsif main_choice == "S"
      show_lists
    elsif main_choice == "X"
      puts "Don't kick the bucket!"
      exit
    else
      puts "-*DOES NOT COMPUTE*-\n\n"
    end
  end
end

def add_list
  puts "Create a new a list by entering the title here:"
  name = gets.chomp
  @to_do_lists << List.new(name)
  puts "\n\n"
end

def show_lists
  puts "A listing-list of listless lists"
  @to_do_lists.each do |list|
    puts list.name
    @list_names << list.name
  end
  puts "\n\n"
  select_list
end

def select_list
  puts "Please enter the name of the list you would like to add a task to:"
  list_title = gets.chomp
  if @list_names.index(list_title) != nil
    new_task(@list_names.index(list_title))
  end
end

def new_task index
  i = @to_do_lists[index]
  puts "Please enter a brief task description for " + @list_names[index]
  title = gets.chomp
  i.add_task(title)
  puts "Task added: " + i.task_list[index].title
end

main_menu
