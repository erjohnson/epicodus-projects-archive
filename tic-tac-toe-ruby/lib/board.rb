class Board

  attr_accessor :spaces, :current_turn

  def initialize
    @spaces = []
    create_spaces
    @current_turn = "X"
  end

  def create_spaces
    i = 1
    9.times do
      new_space = Space.new(i)
      @spaces << new_space
      i += 1
    end
  end

  def next_turn
    if @current_turn == "X"
      @current_turn = "O"
    else
      @current_turn = "X"
    end
  end

  def victory symbol
    # vert cases
    if ((@spaces[0].marked_by == symbol) &&
        (@spaces[3].marked_by == symbol) &&
        (@spaces[6].marked_by == symbol))
          a = "Player " + symbol + " has won!"
          a
    elsif ((@spaces[1].marked_by == symbol) &&
          (@spaces[4].marked_by == symbol) &&
          (@spaces[7].marked_by == symbol))
          a = "Player " + symbol + " has won!"
          a
    elsif ((@spaces[2].marked_by == symbol) &&
          (@spaces[5].marked_by == symbol) &&
          (@spaces[8].marked_by == symbol))
          a = "Player " + symbol + " has won!"
          a
    #horizontal cases
    elsif ((@spaces[0].marked_by == symbol) &&
          (@spaces[1].marked_by == symbol) &&
          (@spaces[2].marked_by == symbol))
          a = "Player " + symbol + " has won!"
          a
    elsif ((@spaces[3].marked_by == symbol) &&
          (@spaces[4].marked_by == symbol) &&
          (@spaces[5].marked_by == symbol))
          a = "Player " + symbol + " has won!"
          a
    elsif ((@spaces[6].marked_by == symbol) &&
          (@spaces[7].marked_by == symbol) &&
          (@spaces[8].marked_by == symbol))
          a = "Player " + symbol + " has won!"
          a
    #diagonal cases
    elsif ((@spaces[0].marked_by == symbol) &&
          (@spaces[4].marked_by == symbol) &&
          (@spaces[8].marked_by == symbol))
          a = "Player " + symbol + " has won!"
          a
    elsif ((@spaces[2].marked_by == symbol) &&
          (@spaces[4].marked_by == symbol) &&
          (@spaces[6].marked_by == symbol))
          a = "Player " + symbol + " has won!"
          a
    # elsif @spaces(all).marked_by == "X" || "O"
    elsif ( ((spaces[0].marked_by == "X") || (spaces[0].marked_by == "O")) &&
            ((spaces[1].marked_by == "X") || (spaces[1].marked_by == "O")) &&
            ((spaces[2].marked_by == "X") || (spaces[2].marked_by == "O")) &&
            ((spaces[3].marked_by == "X") || (spaces[3].marked_by == "O")) &&
            ((spaces[4].marked_by == "X") || (spaces[4].marked_by == "O")) &&
            ((spaces[5].marked_by == "X") || (spaces[5].marked_by == "O")) &&
            ((spaces[6].marked_by == "X") || (spaces[6].marked_by == "O")) &&
            ((spaces[7].marked_by == "X") || (spaces[7].marked_by == "O")) &&
            ((spaces[8].marked_by == "X") || (spaces[8].marked_by == "O")) )
          a = "Stalemate.  No one won"
          a
    else
          a = "The saga continues."
          a
    end
  end
end
