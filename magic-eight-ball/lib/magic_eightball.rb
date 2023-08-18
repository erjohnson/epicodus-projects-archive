def ask_eightball number
  answers = ["It is certain","It is decidedly so","Without a doubt","Yes definitely","You may rely on it","As I see it, yes","Most likely","Outlook good","Yes","Signs point to yes","Reply hazy try again","Ask again later","Better not tell you now","Cannot predict now","Concentrate and ask again","Don't count on it","My reply is no","My sources say no","Outlook not so good","Very doubtful"]
  random_num = number
  if !number
    random_num = get_random_number
  end
  answer = answers.at(random_num)
  answer
end

def get_random_number
  rand(21)
end