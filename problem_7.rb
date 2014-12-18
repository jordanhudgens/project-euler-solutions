# Integrate the prime gem and it's methods
require 'prime'

# Set the prime variable and create an instance of Prime
# pass in the 10,001 as the argument, which will generate an array
# of 10,001 prime numbers
primes = Prime.take(10_001)

# Print out the last element of the array
p primes[-1]

# => Answer: 104743