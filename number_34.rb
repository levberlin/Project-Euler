def factorial(n)
  return (2..n).inject(1, :*);
end

sum = 0;

(10..100000).each do |i|
  a = i.to_s.split("");
  if (i == a.map { |b| factorial(b.to_i) }.inject(0, :+)) then
    sum+=i;
    puts i;
  end
end

print "Total is: ", sum, "\n";
