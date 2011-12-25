names = File.open("names.txt").gets.split(",").sort;
sum = 0;
i = 0;

names.each do |name|
  name_total = 0;
  i +=1;
 # print(names[name], " is ", names[name].length-2, " letters long");
  (1..(name.length-2)).each do |letter|
    name_total += (name[letter].ord - 64)
  end
#  puts name_total;
  sum += (i*name_total);
  if i < 5 then puts name; end
end

puts sum;
