# Step 1: Pull in the mathn library
# Step 2: Convert -999 through 999 to an array
# Step 3: Has several nested iterators, including a checker for prime numbers, iterates until it finds nil, take_while does this automatically. Passes elements to the block until the block returns nil or false, then stops iterating and returns an array of all prior elements. This step includes the method call to the quadratic formula of n^2 + n + b.
# Step 4: Counts the prime results
# Step 5: Grabs the max value

require 'mathn'

puts (-999..999).to_a.product((-999..999).to_a).map { |a, b| [(0..100).take_while { |n| (n**2 + a*n + b).prime? }.count, a * b] }.max[1]
# Solution => -59231