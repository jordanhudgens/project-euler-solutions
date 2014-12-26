# Project Euler 12
# Bring in the math library
require 'mathn'

# Opens up the Integer class
class Integer
  # Add a method 'divisor_count'
  def divisor_count
    # Start with sum at 1
    sum = 1

    # Leverage the prime_division method and iterate over the collection
    self.prime_division.each { |x| sum *= (x[1] + 1) }

    # Return the sum
    sum
  end
end
 
# Define the counter and first triangle number
i, triangle_number = 1, 1

# Iterate until the divisor count is less than or equal to 500
while(triangle_number.divisor_count <= 500)
  # Increment iterator by 1
  i += 1

  # Increment the triangle number by the value of i
  triangle_number += i
end
 
p triangle_number
# => Solution 76576500