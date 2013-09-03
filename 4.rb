palindromes = Array.new

100.upto(999) { |x|
  100.upto(999) { |y|
    number = x * y
    if number.to_s == number.to_s.reverse
      palindromes << number
    end
  }
}

puts palindromes.max