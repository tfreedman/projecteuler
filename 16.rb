sum = 0
num = (2**1000).to_s
num.each_char { |i|
  sum += i.to_i
}

puts sum