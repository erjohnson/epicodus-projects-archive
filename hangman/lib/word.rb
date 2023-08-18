class Word
  attr_reader :word, :split_word
  def initialize new_word
    @word = new_word
    @split_word = new_word.split("")
    @unguessed = ("_" * @split_word.length).split("")

  end

  def check_guess letter
    if @word.index(letter)
      @letter_index = @word.index(letter)
      letter
    else
      nil
    end
  end

  def replace_array letter
    @unguessed[@letter_index] = letter
  end

  def check_length
    @unguessed
  end
end
