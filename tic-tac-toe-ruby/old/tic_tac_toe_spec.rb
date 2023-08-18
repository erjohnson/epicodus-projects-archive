require 'rspec'
require 'pry'
require 'tic_tac_toe'

describe "Board" do
  it "Creates an instance of the Board class" do
    test_board = Board.new
    expect(test_board).to be_an_instance_of Board
  end

  it "Creates 9 spaces" do
    test_board = Board.new
    expect(test_board.spaces.length).to eq 9
  end
end

describe "Space" do
  it "Creates an instance of the Space class" do
    test_space = Space.new(1)
    expect(test_space).to be_an_instance_of Space
  end
  it "Marks a space with a symbol" do
    test_space = Space.new(1)
    test_space.mark_space("X")
    expect(test_space.marked_by).to eq "X"
  end
end

describe "Player" do
  it "Creates an instance of the Player class" do
    test_player = Player.new("X")
    expect(test_player).to be_an_instance_of Player
  end

  it "Returns the symbol of the given player" do
    test_player = Player.new("X")
    expect(test_player.symbol).to eq "X"
  end
end

describe "Game" do
  it "Creates an instance of the Game class" do
    test_game = Game.new
    expect(test_game).to be_an_instance_of Game
  end

  it "Creates two players" do
    test_game = Game.new
    expect(test_game.players[0].symbol).to eq "X"
    expect(test_game.players[1].symbol).to eq "O"
  end

  it "Creates a board" do
    test_game = Game.new
    test_board = test_game.create_board
    expect(test_board).to be_an_instance_of Board
    expect(test_board.spaces.length).to eq 9
  end

  it "Changes to the next turn" do
    test_game = Game.new
    test_game.next_turn
    expect(test_game.current_turn).to eq "O"
  end

  describe "Game.victory" do
    it "The game is won when 3-marks are vertically in a row" do
      test_game = Game.new
    end
  end
end
