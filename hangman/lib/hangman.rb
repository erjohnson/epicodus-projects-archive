class Hangman
  attr_reader :turn, :lives
  def initialize
    @turn = 0
    @lives = 6
  end

  def next_turn
    @turn += 1
  end

  def wrong_guess
    @lives -= 1
  end
end
