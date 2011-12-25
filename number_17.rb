ref = Hash.new();
ref[1] = "one";
ref[2] = "two";
ref[3] = "three";
ref[4] = "four";
ref[5] = "five";
ref[6] = "six";
ref[7] = "seven";
ref[8] = "eight";
ref[9] = "nine";
ref[[2,2]] = "twenty";
ref[[2,3]] = "thirty";
ref[[2,4]] = "forty";
ref[[2,5]] = "fifty";
ref[[2,6]] = "sixty";
ref[[2,7]] = "seventy";
ref[[2,8]] = "eighty";
ref[[2,9]] = "ninety";
ref[10] = "ten";
ref[11] = "eleven";
ref[12] = "twelve";
ref[13] = "thirteen";
ref[14] = "fourteen";
ref[15] = "fifteen";
ref[16] = "sixteen";
ref[17] = "seventeen";
ref[18] = "eighteen";
ref[19] = "nineteen";

text = [];

(1..19).each do |i|
  text.push(ref[i]);
end

puts text.join("");

(20..99).each do |i|
  string = i.to_s;
  text.push(ref[[2,string[0].to_i]]);
  unless (string[1].to_i == 0) then text.push(ref[string[1].to_i]); end
end

puts text.join("");

(100..999).each do |i|
  string = i.to_s;
  text.push(ref[string[0].to_i] + "hundred");
  if(string[1].to_i == 0 && string[2].to_i == 0) then
    text.push("");
  elsif(string[1].to_i == 1) then
    text.push("and");
    text.push(ref[string[1..2].to_i]);
  elsif(string[1].to_i != 0 && string[2].to_i == 0) then
    text.push("and");
    text.push(ref[[2,string[1].to_i]]);
  elsif(string[1].to_i == 0 && string[2].to_i != 0) then
    text.push("and" + ref[string[2].to_i]);
  else
    text.push("and");
    text.push(ref[[2,string[1].to_i]]);
    text.push(ref[string[2].to_i]);
  end
end
text.push("onethousand");

puts text.join(" ");
puts text.join("").length;
