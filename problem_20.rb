# Step 1: Create a factorial value sum function
# Step 2: Set the factorial var equal to the argument value passed into the function
# Step 3: Create an array that ranges from 1 to the value of the argument passed into the function
# Step 4: Reverse sort the values of the array
# Step 5: Iterate over the array and build the factorial by multiplying the updated value of the factorial by the next item on the list: factorial * (n - 1)... 3, 2, 1
# Step 6: Convert the final value of the factorial to a string
# Step 7: Split the string into an array
# Step 8: Iterate through the collection with the map function, casting each element into integers with to_i
# Step 9: Call the inject method with :+ as the argument to generate the sum of the values

def factorial_value_sum_generator(factorial)
  arr = (1..factorial).to_a.reverse.each { |i| factorial += factorial * (i - 1) }
  factorial.to_s.split(//).map(&:to_i).inject(:+)
end

p factorial_value_sum_generator(100)

# Solution => 648
