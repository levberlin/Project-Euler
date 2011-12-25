def palindrome?(string)
  length = string.length;
  comparisons = (length/2).floor;
  palindrome = true;
  if length > 1 then
    (1..comparisons).each do |x|
      if (string[x-1] != string[-x]) then
        palindrome = false;
      end
    end
  end    
  return palindrome;
end

sum = 0;

(1...1000000).each do |num|
  if (palindrome?(num.to_s)) then
    if (palindrome?(num.to_s(2))) then
      sum += num;
      puts num;
    end
  end
end

print "Total is: ", sum, "\n"
