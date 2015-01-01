# Step 1 ->   Find the expoential value for 2 to the power of 1000 with: 2 ** 1000
# Step 2 ->   Convert the value of the exponent to a string to make it easier to add each element to an array with the to_s method
# Step 3 ->   Use the split(//) method to convert each character in the string into a separate element in the array
# Step 4 ->   Use the map method and pass in the block call so it converts each element in the array into an integer
# Step 5 ->   Finally, use the inject method, passing in :+ so sum up each element in the array of integers

p (2 ** 1000).to_s.split(//).map(&:to_i).inject(:+)

# Solution => 1366
