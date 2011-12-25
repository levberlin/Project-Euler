def spiral(n)
  if n < 3 then
    return 1;
  else
    upper_right = (1..n).step(2).map {|i| i*i}.inject(0,:+);
    puts upper_right;
    lower_right = (3..n).step(2).map {|i| (i-2)**2 + i-1}.inject(0,:+);
    puts lower_right;
    lower_left = (3..n).step(2).map {|i| (i-2)**2 +2*i-2}.inject(0,:+);
    puts lower_left;
    upper_left = (3..n).step(2).map {|i| (i-2)**2 + 3*i-3}.inject(0,:+);
    puts upper_left;

    # summarizing the previous steps into one line
    one_line = n*n + (3..n).step(2).map {|i| 4*(i-2)**2 + 6*i - 6}.inject(0,:+);
    puts one_line;

    #return sum from step method
    return upper_right + lower_right + lower_left + upper_left;
  end
end

puts spiral(1001);
