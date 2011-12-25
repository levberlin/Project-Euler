def chain(n)
  chain = [];
  until (n == 1) do 
    if(n%2 == 0) then
      chain.push(n);
      n = n/2;
    else
      chain.push(n);
      n = 3*n+1;
    end
  end
  chain.push(n);
end

max = 0;
max_start = 0;

(1...1000000).each do |i|
  if (chain(i).length > max) then
    max = chain(i).length;
    max_start = i;
  end
end

puts max_start;
puts max;
