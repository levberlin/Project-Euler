primes = [2,3];
state = Numeric.new
(4...10000).each do |i|
  (2..(Math.sqrt(i).ceil)).each do |thing|
    state = 1
    if (i%thing == 0)
      state = 0
      break
    end
  end
  primes.push(i) unless (state == 0);
end 

max = 0;
coeff_a = 0;
coeff_b = 0;

# lots of room to optimize this loop
(-999..999).each do |a|
  (-999..999).each do |b|
    x = false
    n = 0;
    while (x == false) do
      if (primes.include?(n*n+a*n+b) == true) then
        n += 1;
      else
        if (n > max) then
          max = n;
          coeff_a = a;
          coeff_b = b;
          print "n = ", n, ", a = ", coeff_a, ", b = ", coeff_b, "\n";
        end
        x = true;
      end
    end
  end
end

puts coeff_a*coeff_b;
