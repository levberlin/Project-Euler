words = File.open("words.txt").gets.gsub!('"','').split(",");
triangle_words = 0;
triangle_numbers = [];

puts words[0..5]

(1..1000).each do |i|
  triangle_numbers.push((i/2.0)*(i+1))
end

words.each do |word|
  word_sum = 0
  word.each_byte do |char|
    word_sum += char - 64
  end
  triangle_words+=1 if (triangle_numbers.include?(word_sum))
end

puts triangle_words
