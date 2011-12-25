a = "4444444444 777777777 999999999 7777777777 222 66666666666 4444444444 1111111111 222 22222222222 8888888888 777777777 00000000000 1111111111 66666666666".split(" ");

a.each do |i|
  b = i.length.to_s + i[0];
  print b.to_i.chr;
end
print "\n";
print a.map {|i| (i.length.to_s + i[0]).to_i.chr}.join("");
print "\n";
