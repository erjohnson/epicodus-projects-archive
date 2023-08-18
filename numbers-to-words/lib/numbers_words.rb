def numbers_words(number)
  ones = {
    "one" =>  1,
    "two" =>  2,
    "three" => 3,
    "four" => 4,
    "five" => 5,
    "six" => 6,
    "seven" => 7,
    "eight" => 8,
    "nine" => 9
  }
  teens = {  "ten" => 10,
             "eleven" => 11,
             "twelve" => 12,
             "thirteen" => 13,
             "fourteen" => 14,
             "fifteen" => 15,
             "sixteen" => 16,
             "seventeen" => 17,
             "eighteen" => 18,
             "nineteen" => 19
  }
  tens = {"twenty" => 2,
          "thirty" => 3,
          "forty" => 4,
          "fifty" => 5,
          "sixty" => 6,
          "seventy" => 7,
          "eighty" => 8,
          "ninety" => 9
  }
  bigs = {"" => 0,
          "thousand" => 3,
          "million" => 6,
          "billion" => 9,
          "trillion" => 12
  }

  num_arr = number.to_s.split("")
  group_arr = num_arr.reverse.each_slice(3).to_a
  res_arr = []
  i = 0
  group_arr.each do |num_set|
    if num_set[2].to_i > 0
      if num_set[1] == "1"
        res_arr.push(bigs.key(i))
        x = (num_set[1]+num_set[0]).to_i
        y = teens.key(x)
        res_arr.push(y)
        res_arr.push("hundred")
        res_arr.push(ones.key(num_set[2].to_i))
        i += 3
      else
        res_arr.push(bigs.key(i))
        res_arr.push(ones.key(num_set[0].to_i))
        res_arr.push(tens.key(num_set[1].to_i))
        res_arr.push("hundred")
        res_arr.push(ones.key(num_set[2].to_i))
        i += 3
      end
    elsif num_set[1].to_i > 0
      if num_set[1] == "1"
        res_arr.push(bigs.key(i))
        x = (num_set[1]+num_set[0]).to_i
        y = teens.key(x)
        res_arr.push(y)
        i += 3
      else
        res_arr.push(bigs.key(i))
        res_arr.push(ones.key(num_set[0].to_i))
        res_arr.push(tens.key(num_set[1].to_i))
        i += 3
      end
    elsif num_set[0] == "0"
        i += 3
    else
        res_arr.push(bigs.key(i))
        res_arr.push(ones.key(num_set[0].to_i))
        i += 3
    end
  end
  result = res_arr.reverse.join(" ").chomp(" ").chomp(" ")
  result
end
