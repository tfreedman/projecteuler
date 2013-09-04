sum = 0
1.upto(1000000) { |x|
    if x.to_s == x.to_s.reverse and x.to_s(2) == x.to_s(2).reverse
      sum += x
    end
}

puts sum
