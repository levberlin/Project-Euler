primes = [2,3];
state = Numeric.new
(4...100000).each do |i|
  (2..(Math.sqrt(i).ceil)).each do |thing|
    state = 1
    if (i%thing == 0)
      state = 0
      break
    end
  end
  primes.push(i) unless (state == 0);
end 

puts(primes[0]);
puts(primes[1000]);
