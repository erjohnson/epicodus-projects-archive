class Board

  attr_accessor :spaces

  def initialize
    @spaces = []
    create_spaces
  end

  def create_spaces
    i = 1
    9.times do
      new_space = Space.new(i)
      @spaces << new_space
      i += 1
    end
  end

end

class Space
  attr_accessor :marked_by

  def initialize num
    @space_num = num
    @marked_by = nil
  end

  def mark_space symbol
    @marked_by = symbol
  end

end

class Player
  attr_reader :symbol

  def initialize symbol
    @symbol = symbol
  end
end

class Game
  attr_reader :players, :current_turn

  def initialize
    create_board
    add_players
    @current_turn = "X"
  end

  def add_players
    @players = []
    player_x = Player.new("X")
    @players << player_x
    player_o = Player.new("O")
    @players << player_o
  end

  def create_board
    new_board = Board.new
    new_board
  end

  def next_turn
    if @current_turn == "X"
      @current_turn = "O"
    else
      @current_turn = "X"
    end
  end

  def victory

  end
end
