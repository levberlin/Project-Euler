sum = 0
test = [1, 10, 100, 1000, 10000, 100000, 1000000]
testvalue = test[0];
results = [];

(1..1000001).each do |b|
  sum += b.to_s.length
  if (sum >= testvalue) then 
    print "b is ", b, " sum is ", sum, "\n"
    length = b.to_s.length
    results.push(b.to_s.reverse[sum%testvalue].to_i)
    if (test.length ==1) then
      break
    end
   unless (test.length == 1) then 
      test.shift
      testvalue=test[0]
    end
  end
end

print results.reduce(1,:*), "\n"
