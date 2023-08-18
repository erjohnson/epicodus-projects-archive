def palindrome_check message

  exceptions = [',', ':', ';', "'", '"', '.', '-', '?', '!']
  msg_array = message.downcase.split(" ").join("").split("").delete_if { |char| exceptions.index(char) }
  msg = msg_array.join("")

  if msg == msg.reverse
    true
  else
    false
  end
end
