a = (0..9).to_a.permutation.map(&:join)

sum = 0
a.each do |x|
  next if x[0] == '0'
  y = x.to_i
  next if x[1..3].to_i % 2 != 0
  next if x[2..4].to_i % 3 != 0
  next if x[3..5].to_i % 5 != 0
  next if x[4..6].to_i % 7 != 0
  next if x[5..7].to_i % 11 != 0
  next if x[6..8].to_i % 13 != 0
  next if x[7..9].to_i % 17 != 0
  sum += y  
end

puts sum