year, month, sunday = 1901, 1, 0

while year < 2001
  time = Time.local(year, month, 1)
  sunday += 1 if time.wday == 0
  month += 1
  if month == 13
    month = 1
    year += 1
  end  
end

puts sunday