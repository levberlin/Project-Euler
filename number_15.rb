routes = Hash.new();

def routes(a,b, routes)
  if (a == 0 && b == 0) then
    0;
  elsif (a == 0 || b == 0) then
    1;
  else 
    routes[[a,b-1]]+routes[[a-1,b]];
  end
end

(0..100).each do |a|
  (0..100).each do |b|
    routes[[a,b]] = routes(a,b,routes);
  end
end

puts routes[[100,100]];
