# Project Euler | Problem 5 | Find the Least Common Multiple
# Any operation taking 2 operands (of the same type) can be applied to a collection by
# using a fold and leveraging the Enumerable module's reduce method.

# Step 1: Create a range from 1 to 20
# Step 2: Convert the range to an array
# Step 3: Call the reduce method and pass in the built in lcm (least common multiple method)
p (1..20).to_a.reduce(:lcm)

# => Answer: 232792560

