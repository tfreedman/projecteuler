require 'mathn'

primes = Array.new
n = 2

while primes.size < 10001
  if n.prime?
    primes << n
  end
  n += 1
end


puts primes[-1]
