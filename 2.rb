first = 1
second = 0
temp = 0
sum = 0

while first < 4000000 and second < 4000000
  temp = second
  second = second + first
  first = temp
  if second % 2 == 0
    sum += second  
  end
end 

puts sum