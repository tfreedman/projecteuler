require 'mathn'
stack = Array.new

current = 8

while stack.length < 11
  if current.prime?
    ltr, rtl = current.to_s, current.to_s
    while (ltr.to_i.prime? and rtl.to_i.prime?) and ltr.length > 0
      ltr[0] = ''
      rtl = rtl[0...-1]
    end
    if ltr.length == 0
      stack << current
    end
  end
  current += 1
end

sum = 0
stack.each do |num|
  sum += num
end

puts sum
