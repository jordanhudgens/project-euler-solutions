# Require the prime library
require 'prime'

# Find all of the prime numbers from 0 to 2,000,000
prime_array = Prime.take_while { |p| p < 2_000_000 }

# Sum up the array
updated_array = prime_array.inject{ |sum,x| sum + x }

# Print it out to the console
p updated_array

# => 142913828922