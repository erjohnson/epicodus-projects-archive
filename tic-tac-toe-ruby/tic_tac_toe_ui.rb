require './lib/board'
require './lib/space'

def w_s
  puts "\n"
end

@current_game = nil

def header
  system 'clear'
  puts "
▀▀█▀▀ ▀█▀ ▒█▀▀█ 　 ░░ 　 ▀▀█▀▀ ░█▀▀█ ▒█▀▀█ 　 ░░ 　 ▀▀█▀▀ ▒█▀▀▀█ ▒█▀▀▀
░▒█░░ ▒█░ ▒█░░░ 　 ▀▀ 　 ░▒█░░ ▒█▄▄█ ▒█░░░ 　 ▀▀ 　 ░▒█░░ ▒█░░▒█ ▒█▀▀▀
░▒█░░ ▄█▄ ▒█▄▄█ 　 ░░ 　 ░▒█░░ ▒█░▒█ ▒█▄▄█ 　 ░░ 　 ░▒█░░ ▒█▄▄▄█ ▒█▄▄▄
  "
  puts "The newest Massive Multiplayer craze!"
end

def display
  g = @current_game
  puts "It's Player " + @current_game.current_turn + "'s turn."
  w_s
  puts g.spaces[0].marked_by + "|" + g.spaces[1].marked_by + "|" + g.spaces[2].marked_by
  puts g.spaces[3].marked_by + "|" + g.spaces[4].marked_by + "|" + g.spaces[5].marked_by
  puts g.spaces[6].marked_by + "|" + g.spaces[7].marked_by + "|" + g.spaces[8].marked_by
end

def main_menu
  header
  w_s
  puts "N > New Game"
  puts "X > Exit"
  w_s
  main_choice = gets.chomp.upcase
  if main_choice == "N"
    start_game
  elsif main_choice == "X"
    exit
  else
    system 'clear'
    puts "Invalid! Try again"
  end
end

def start_game
  @current_game = nil
  header
  w_s
  @current_game = Board.new
  play_game
end

def play_game
  g = @current_game
  header
  w_s
  display
  w_s
  puts "Enter the space number to mark"

  space_to_mark = gets.chomp.to_i
  symbol = @current_game.current_turn

  g.spaces[space_to_mark-1].mark_space(symbol)

  if g.victory(symbol) != "The saga continues."
    puts g.victory(symbol)
    sleep 1.5
    main_menu
  end

  g.next_turn

  play_game
end

main_menu
