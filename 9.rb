a = 0
b = 1

while b < 1000
  if (a*a + b*b) % Math.sqrt(a*a + b*b) == 0 and Math.sqrt(a*a + b*b) + a + b == 1000
    puts a * b * Math.sqrt(a*a + b*b).to_i
    break
  end
  if a == 1000
    a = 0
    b += 1
  end
  a += 1
end