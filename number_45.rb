triangle = []
pentagon = []
hexagon = []

(1..100000).each do |i|
  triangle.push(i*(i+1)*0.5)
  pentagon.push(i*(3.0*i-1)*0.5)
  hexagon.push(i*(2.0*i-1))
end

pentagon.delete_if { |x| x > triangle.last }
hexagon.delete_if { |x| x > triangle.last }

puts pentagon.length
puts hexagon.length

triangle.each do |t|
  puts t if (pentagon.include?(t) && hexagon.include?(t))
end
