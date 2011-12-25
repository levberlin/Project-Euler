primes = [2,3];
state = Numeric.new
(4...1000000).each do |i|
  (2..(Math.sqrt(i).ceil)).each do |thing|
    state = 1
    if (i%thing == 0)
      state = 0
      break
    end
  end
  primes.push(i) unless (state == 0);
end 

puts "primes done";
puts primes.length;

#only odd primes
odd_primes = [2];

primes.each do |prime|
  a = prime.to_s.split("");
  x = true;
  a.each do |b|
    if((b.to_i == 2 || b.to_i == 4 || b.to_i == 6 || b.to_i == 8 || b.to_i == 10)) then
      x = false;
    end
  end
  if (x == true) then
    odd_primes.push(prime);
  end
end

puts "odd_primes done";
puts odd_primes.length;
puts odd_primes.last;

circles = [];

odd_primes.each do |num|
 # if (num.to_s.split("").each# finish this
    if (circles.include?(num) == false) then
      x = true;
      string = num.to_s.split("");
      (0..(string.length-1)).each do |a|
        front = string.shift;
        string.push(front);
        if (odd_primes.include?(string.join("").to_i)) then
          x = true;
        else
          x = false;
          break; 
        end
      end
      if (x) then
        (0..(string.length-1)).each do |a|
          front = string.shift;
          string.push(front);
          circles.push(string.join("").to_i);
        end
      end
    end
end

#puts circles;
print "Total circles under 1MM: ", circles.uniq.length, "\n"; 
