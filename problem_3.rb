# Recursive solution to problem number three of the project Euler questions.
# Found solution while researching Ruby specific ways of answering the problem on:
# http://justintallant.com/project-euler-problem-3-in-ruby/?doing_wp_cron=1417557139.5415439605712890625000

def find_prime_factor(n)

  # First check to ensure that n is greater than 1
  if n > 1
    
    # Store the value of the factor in the factor variable
    factor = (2..n).find {|x| n % x == 0}

    # Add the factor index to the value of the recursive value of n divided by the value in the factor
    [factor] + find_prime_factor(n / factor)

  # Check to see if n == 1
  elsif n == 1
    # If n == 1 the function returns the empty array
    []
  end
end

puts find_prime_factor(600851475143).max

# => Answer: 6857