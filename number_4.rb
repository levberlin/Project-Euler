def palindrome?(i)
  string = i.to_s;
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

max = 0;

(100..999).each do |a|
  (100..999).each do |b|
    if (palindrome?(a*b) && a*b > max) then
      max = a*b;
    end
  end
end

puts max;
