require './lib/hangman'
require './lib/pics'
require './lib/word'
require './lib/dictionary'
require './lib/alphabet'
require 'colorize'

def header number
  system 'clear'
  @turn
  puts "
▒█░▒█ ░█▀▀█ ▒█▄░▒█ ▒█▀▀█ █▀▄▀█ █▀▀█ █▀▀▄
▒█▀▀█ ▒█▄▄█ ▒█▒█▒█ ▒█░▄▄ █░▀░█ █▄▄█ █░░█
▒█░▒█ ▒█░▒█ ▒█░░▀█ ▒█▄▄█ ▀░░░▀ ▀░░▀ ▀░░▀
Hard Mode
"
  puts number
  puts "Turn: " + @turn.to_s
end
def main_menu
  @turn = 0
  header(@wrong_0)
  puts "N > Start a new game"
  puts "X > Exit"

  main_choice = gets.chomp.downcase
  if main_choice == 'n'
    new_game
  elsif main_choice == 'x'
    puts "later skater"
    exit
  else
    system 'clear'
    puts "Sry."
    main_menu
  end
end

def new_game
  new_word_x = Dictionary.new()
  rand_num = new_word_x.get_random_num
  @new_word = new_word_x.get_random_word(rand_num)
  @new_array = Word.new(@new_word)
  @index = 0
  word_display(@wrong_0)
end

def word_display picture
  header(picture)
  length = @new_array.check_length
  puts "\nYour word:"
  puts @new_array.check_length.join(" ")
  puts "\n\n"
  choose_letter
end

def choose_letter
  if !@new_array.check_length.index("_")
    puts @you_win
    puts "\n\n"
    exit
  end
  @pic_array = [@wrong_0, @wrong_1, @wrong_2, @wrong_3, @wrong_4, @wrong_5, @wrong_6]
  puts "\nChoose a letter!"
  @guess = gets.chomp.downcase
  @turn += 1
  if @new_array.check_guess(@guess)
    @new_array.replace_array(@guess)
    word_display(@pic_array[@index])
  else
    @index += 1
    if @index < 6
      word_display(@pic_array[@index])
    else
      header(@wrong_6)
      puts @you_lose
   end
  end
end

main_menu
