stack = Array.new

2.upto(100) { |x|
  2.upto(100) { |y|
    stack << x**y
  }
} 

puts stack.uniq.length
