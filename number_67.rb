timer_start = Time.now()

# read in data from file
triangle = File.open("triangle.txt").readlines;
triangle.map! {|x| x.split(" ")};
a = triangle[2];
puts a[0];

# Loop through each row of the triangle starting at the base.
(triangle.length - 1).downto(0) { |a| 0.upto(a-1) { |b|

# Get the maximum value for adjacent cells in current row.
# Update the cell which would be one step prior in the path
# with the new total. For example, compare the first two
# elements in row 15. Add the max of 04 and 62 to the first
# position of row 14.This provides the max total from row 14
# to 15 starting at the first position. Continue to work up
# the triangle until the maximum total emerges at the
# triangle's apex.
  triangle [a-1][b] = triangle[a-1][b].to_i + [triangle[a][b].to_i, triangle[a][b+1].to_i].max
# puts triangle [a-1][b]
}
}
puts triangle [0][0]
