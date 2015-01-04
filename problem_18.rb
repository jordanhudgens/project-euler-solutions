# Step 1:   Setup the triangle as a text string and store it in a variable
# Step 2:   Call the each_line method, which belongs to the Ruby String class on the triangle variable
# Step 3:   Map through the string, removing all whitespace with 'strip', use split to create an array of each element, then convert each element to an integer
# Step 4:   Iterate through the array until only one element is left
# Step 5:   Pop each element off the array
# Step 6:   Find each set of 2 consecutive elements and return the maximum value
# Step 7:   Set the last element in the array equal to: the previous last element, running the zip method with maxes as the argument, then adding those two items together, and finally flattening the array

triangle = 
"75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"
 
path_array = triangle.each_line.map{|line| line.strip.split.map(&:to_i)}

until path_array.size == 1 do
  maxes = path_array.pop.each_cons(2).map(&:max)
  path_array[-1]= path_array[-1].zip(maxes).map{|r1,r2| r1 + r2}.flatten
end

puts path_array
# Solution => 1074