number = 20

while true
  1.upto(20) { |x|
    if number % x != 0 
      number = number + 1
      break
    elsif x == 20
      puts number
      exit
    end
}
end