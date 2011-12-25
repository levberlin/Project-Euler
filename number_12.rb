def factors(n)
  factors = [];
  (1..((n**0.5).floor)).each do |i|
    if (n%i == 0) then
      factors.push(i);
      factors.push(n/i);
    end
  end
  factors;
end

(1..100000).each do |number|
  triangle = (1..number).inject(0, :+);
  if (factors(triangle).length > 500) then
    puts number;
    puts triangle;
    break;
  end
end
