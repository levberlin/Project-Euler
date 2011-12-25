test = false;
value = 20;

while (test == false) do
  test = true;
  (1..19).each do |i|
    if(value%i != 0) then
      value += 20;
      test = false;
      break;
    end
  end
end

puts value;
