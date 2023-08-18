require 'rspec'
require 'pry'
require 'board'
require 'space'

describe 'Board' do
  it "Creates an instance of the Board class" do
    test_board = Board.new
    expect(test_board).to be_an_instance_of Board
  end

  it "Creates 9 spaces" do
    test_board = Board.new
    expect(test_board.spaces.length).to eq 9
  end

  it "Changes to the next turn" do
    test_board = Board.new
    test_board.next_turn
    expect(test_board.current_turn).to eq "O"
  end

  it "Game is won when 3 spaces in a row vertically are marked by the same player" do
    test_board = Board.new
    test_board.spaces[0].mark_space("X")
    test_board.spaces[3].mark_space("X")
    test_board.spaces[6].mark_space("X")
    expect(test_board.victory("X")).to eq "Player X has won!"
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
