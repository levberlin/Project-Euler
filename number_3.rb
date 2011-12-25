primes = Array.new;
state = Numeric.new
(4..100000).each do |i|
  (2..(Math.sqrt(i).ceil)).each do |thing|
    state = 1
    if (i%thing == 0)
      state = 0
      break
    end
  end
  primes.push(i) unless (state == 0);
end 

puts primes.last;

def primefactors(n, primes)
  factors = [];
  primes.each do |prime|
    if (n%prime == 0) then 
      factors.push(prime);
    end
  end

  puts factors.length;
  puts factors.max;
end

primefactors(600851475143, primes);
