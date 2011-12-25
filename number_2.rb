fib = [1,2];
sum = 0;

while fib.last<=4000000 do
  fib.push(fib[-1]+fib[-2]);
end

fib.pop;
fib.each do |f|
  if(f%2 ==0) then
    sum += f;
  end
end

puts fib;
puts sum;
