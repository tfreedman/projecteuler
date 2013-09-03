chain = Array.new

def n(x)
  if x % 2 == 0
    return x/2
  elsif x == 1
    return 0
  else
    return x * 3 + 1
  end
end


value = 1
counter = 1
stack = 0
while counter < 1000000
  while value != 0
    value = n(value)
    stack += 1
  end
  chain << stack
  stack = 0
  value = counter
  counter += 1
end

puts chain.index(chain.max).to_s
