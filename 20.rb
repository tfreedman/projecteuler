def factorial(n)
  if n == 1
    return 1
  else
    return n * factorial(n - 1)
  end
end

number = factorial(100)
sum = 0


0.upto(number.to_s.length) { |x|
  sum += number.to_s[x].to_i
}

puts sum