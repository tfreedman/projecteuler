sum = 0
1.upto(1000) { |x|
  sum += x**x
}

puts sum.to_s[-10..-1]
