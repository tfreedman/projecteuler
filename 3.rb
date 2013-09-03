require 'mathn'

number = 600851475143
factors = Array.new
Math.sqrt(number).round.downto(1) {|n|
  if number % n == 0 and n.prime?
      factors << n  
  end
}

puts factors.max