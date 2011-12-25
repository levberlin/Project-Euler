day = 2;
sum = 0;

(1901..2000).each do |year|
  #january
  if (day%7 == 0)
    sum+=1;
  end
  day += 31;
  #feb
  if (day%7 == 0) 
    sum+=1;
  end
  if (year%4 == 0)
    day += 29;
  else
    day += 29;
  end
  if (day%7 == 0)
    sum+=1;
  end
  day += 31;
  if (day%7 == 0) 
    sum+=1;
  end
  day += 30;
  if (day%7 == 0) 
    sum+=1;
  end
  day += 31;
  if (day%7 == 0) 
    sum+=1;
  end
  day += 30;
  if (day%7 == 0) 
    sum+=1;
  end
  day += 31;
  if (day%7 == 0) 
    sum+=1;
  end
  day += 31;
  if (day%7 == 0) 
    sum+=1;
  end
  day += 30;
  if (day%7 == 0) 
    sum+=1;
  end
  day += 31;
  if (day%7 == 0) 
    sum+=1;
  end
  day += 30;
  if (day%7 == 0) 
    sum+=1;
  end
  day += 31;
end

puts sum;
