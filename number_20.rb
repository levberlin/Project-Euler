
def factorial(n)
  product = (1..n).inject(1, :*)
end

puts product = factorial(100);
string = product.to_s;
puts string;
sum = 0;
(0..(string.length-1)).each do |i|
  sum +=string[i].to_i;
end

puts sum
# sexy one line way courtesy of Artem
puts factorial(100).to_s.split("").map(&:to_i).inject(:+);
