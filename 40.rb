string = ' '

1.upto(190000) { |x|
  string += x.to_s
}

puts string[1].to_i * string[10].to_i * string[100].to_i * string[1000].to_i * string[10000].to_i * string[100000].to_i * string[1000000].to_i
