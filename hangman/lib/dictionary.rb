class Dictionary
  attr_reader :words_array, :word, :randum_num
  def initialize
    @words_array = ["cat", "truck", "epicodus"]
    @word = nil
  end
  def get_random_num
    @randum_num = rand(3)
  end
  def get_random_word input_num
    num = nil
    if input_num
      num = input_num
    else
    num = @randum_num
    end
    @word = @words_array.at(num)
  end
end
