array = [];

(2..100).each do |a|
  (2..100).each do |b|
    array.push(a**b);
  end
end

puts array.uniq.length;
