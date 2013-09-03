require 'mathn'
sum = 0

2.upto(2000000) { |x|
 if x.prime?
   sum += x
 end 
}

puts sum