sum = 0
for x in 1..999
  if x % 3 == 0 or x % 5 == 0
    sum+=x
  end
end

puts sum