# Solution to Project Euler's problem 4
# Found solution while researching Ruby specific ways of answering the problem on:
# http://johnnycoder.com/blog/2010/07/05/project-euler-4-ruby/

class ProblemFour

  # Initialize the class with the max item being set to 0
  def initialize
    @max = 0
  end

  # Method specific to the project
  def three_figure_palindrome
    # Two iterators that will increment with each iteration
    # One for the left hand side of the equation, and one for the right
    100.upto(999) do |left_side|
      100.upto(999) do |right_side|
        
        # Find the product of all three digit numbers and store in variable
        possible_palindrome = left_side * right_side

        # Checks to see if the product of the two numbers is a palindrome or not
        if (is_palindrome? possible_palindrome) && (possible_palindrome > @max)
          # Stores the current highest valued palindrome in the instance variable
          @max = possible_palindrome
        end
      end
    end
    # Returns the instance variable as the result of the method
    @max
  end

  private

  # Method for checking if the value passed in is a palindrome or not
  def is_palindrome?(n)
    n.to_s == n.to_s.reverse
  end

end

problem_four = ProblemFour.new
p problem_four.three_figure_palindrome

# => Answer: 906609
