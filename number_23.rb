def factors(n)
  factor = 1;
  (2..((n**0.5).floor)).each do |i|
    if (n%i == 0) then 
      factor += i;
      factor += n/i unless i == n/i;
    end
  end
  return factor;
end

abundant = [];

(1..28123).each do |i|
  if (factors(i) > i) then
    abundant.push(i);
  end
end

sums = [];

abundant.each do |a|
  abundant.each do |b|
    sums.push(a+b);
  end
end

puts ((1..28123).to_a - sums.uniq).inject(0, :+);
