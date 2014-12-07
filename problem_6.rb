# Project Euler | Problem 6 | Sum square difference

# Naive implementation - but easier to read
# class ProblemSix
#   def sum_of_squares
#     sum = 0
#     (1..100).to_a.each do |i|
#       sum += i ** 2
#     end
#     sum
#   end

#   def square_of_sum
#     sum = 0
#     (1..100).to_a.each do |i|
#       sum += i
#     end
#     sum ** 2
#   end

#   def get_diff
#     square_of_sum - sum_of_squares
#   end
# end

# Functional implementation utilizing the inject method to generate the sums
# and the initializer for setting up the array to remove duplication
class ProblemSix

  # Setup initializer with a variable length array.
  # This allows the class to alter its length with the n argument
  def initialize(n)
    @first_hundred = (1..n).to_a
  end

  # Creates the sum of the squares by leveraging the inject method and squaring each element
  # with each iteration and adding it to the result
  def sum_of_squares
    @first_hundred.inject(0) { |result, element| result + element ** 2 }
  end

  # Creates the square of the sum and squares the final result
  def square_of_sum
    (@first_hundred.inject(0) { |result, element| result + element }) ** 2
  end

  # Returns the difference of the square of the sum and the sum of square
  def get_diff
    square_of_sum - sum_of_squares
  end
end

# Instaniate the class and pass in 100 to create an array of length 100
s = ProblemSix.new(100)

# Call the get_diff method on the object
p s.get_diff

# => 25164150