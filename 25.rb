stack = Array.new
stack << 1 << 1

while stack[-1].to_s.length != 1000
  stack << stack[-1] + stack[-2]
end

puts stack.length