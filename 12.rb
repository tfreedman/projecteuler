require 'mathn'
number, divisors, count, sqrt = 1, 0, 1, 0

while true
  sqrt.downto(1) { |x|
    if number % x == 0
      divisors += 2
    end
  }
  
  if divisors >= 500
    puts number.to_s
    break
  end

  divisors = 0
  count += 1
  number += count
  sqrt = Math.sqrt(number).to_i
end