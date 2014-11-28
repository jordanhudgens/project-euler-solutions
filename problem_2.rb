# Project Euler | Problem 2 | Even Fibonacci numbers
# Sample:   Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
#           1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# Question: By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

class ProjectEulerTwo
    def initialize(max)
        @num_1 = 0
        @i = 0
        @sum = 0
        @num_2 = 1
        @max = max
    end
    
    def even_fibonacci
        # Loop until i > 4MM
        while @i <= @max
          # Increment the iterator by the current and previous values
          @i = @num_1 + @num_2
          
          # Add the value of the iterator to the sum with each iteration
          @sum += @i if @i % 2 == 0
          
          # Swap the values of num_1 and num_2
          @num_1 = @num_2
          
          # Set num_2 to the value of the iterator
          @num_2 = @i
        end
        @sum # Returns the sum
    end
end

# Passing in 4,000,000 as the max argument
result = ProjectEulerTwo.new(4_000_000)
result.even_fibonacci
# => Answer: 4613732