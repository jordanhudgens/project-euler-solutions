def fibonacci_digit_counter
  num1, num2, i = -1, 0, 1

  # Iterate from 1 until the length of the integer digit length is greater than 1000
  while i.to_s.length < 1000
    # Increment the current value
    num1 += 1

    # Implement basic fibonacci implementation
    i, num2 = num2, num2 + i
  end

  # Return the first value that contains 1000 digits
  num1
end

p fibonacci_digit_counter
# Solution => 4782