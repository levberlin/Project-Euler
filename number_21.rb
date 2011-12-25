def factors(n)
  factors = 1;
  (2..((n**0.5).floor)).each do |i|
    if (n%i == 0) then
      factors += i;
      factors += n/i;
    end
  end
  return factors;
end

sum = 0;
(1...10000).each do |i|
  amicable = factors(i);
  if (factors(amicable) == i && amicable !=i) then
    sum += i;
    puts i;
  end
end

puts sum;
