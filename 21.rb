def d(n)
  if n == 1
    return 0
  end
  sum = 0 - n
  1.upto(Math.sqrt(n).to_i) { |x|
    if n%x == 0
      sum += x + n/x
    end
  }
  return sum
end

total = 0
1.upto(10000) { |x|
  temp = d(x)
  if d(temp) == x and temp < 10000 and d(x) != x
    total += x
  end
}

puts total