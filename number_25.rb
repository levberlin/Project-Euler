fib = [1,1]
x = false;

while (x == false) do
  fib.push(fib[-1] + fib[-2]);
  if (fib.last.to_s.length >= 1000) then 
    puts fib.length;
    x = true; 
  end
end
