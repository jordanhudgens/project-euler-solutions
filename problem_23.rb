class Integer
  def factors
    1.upto(Math.sqrt(self)).select {|i| (self % i).zero?}.inject([]) do |f, i| 
      f << self/i unless i == self/i
      f << i
    end.sort
  end
end

class Array
  def drop_last_element
    self[0...-1]
  end
end

def abundant_number?(num)
  num.factors.drop_last_element.inject(:+) > num
end

def sum_of_abundant_numbers?(num1, num2)
  # Need to find the sum of non-abundant numbers
  # https://projecteuler.net/problem=23
end

p abundant_number?(12)