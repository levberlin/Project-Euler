sum = 0;

(2..1000000).each do |i|
  if (i == i.to_s.split("").map{|x| x.to_i**5}.inject(0,:+)); then
    sum += i;
    puts i;
  end
end


puts sum;
