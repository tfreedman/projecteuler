sum = 0
squares = 0
1.upto(100) { |x|
  sum += x 
  squares += x * x 
}

puts sum * sum - squares 
