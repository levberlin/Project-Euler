n = 0;
upper = 1000

for i in 1...upper
  if (i%5 == 0 || i%3 == 0) then 
    n += i;
  end
end

puts i;
puts n;
