require 'rspec'
require 'hangman'
require 'word'
require 'dictionary'

describe 'Hangman' do
  it 'initializes a hangman object' do
    new_hangman = Hangman.new()
    expect(new_hangman).to be_an_instance_of Hangman
  end

  it 'it adds a turn when called' do
    new_hangman = Hangman.new()
    new_hangman.next_turn
    expect(new_hangman.turn).to eq 1
  end

  it 'it removes a life when called' do
    new_hangman = Hangman.new()
    new_hangman.wrong_guess
    expect(new_hangman.lives).to eq 5
  end
end

describe 'Word' do
  it 'initializes a word object' do
    new_word = Word.new("cat")
    expect(new_word).to be_an_instance_of Word
  end

  it 'checks if a correctly guessed letter is in the word' do
    new_word = Word.new("cat")
    expect(new_word.check_guess("c")).to eq "c"
  end

  it 'checks if an incorrectly guessed letter is in the word' do
    new_word = Word.new("cat")
    expect(new_word.check_guess("h")).to eq nil
  end
end

describe 'Dictionary' do
  it 'initializes a dictionary object' do
    new_dictionary = Dictionary.new()
    expect(new_dictionary).to be_an_instance_of Dictionary
  end

  it 'returns a word' do
    new_dictionary = Dictionary.new()
    expect(new_dictionary.get_random_word(0)).to eq "cat"
    expect(new_dictionary.get_random_word(1)).to eq "truck"
    expect(new_dictionary.get_random_word(2)).to eq "epicodus"
  end
end
