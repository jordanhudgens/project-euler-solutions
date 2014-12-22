 class PythagoreanTriplet

  def initialize(n)
    @sum = n
  end

  # Method uses nested loops to iterate through and add to result collection
  def pythagorean_triplet(num)
    result = []
    (2..num).each do |m|
      (1...m).each do |n|
        result << [m ** 2 - n ** 2, 2 * m * n, m ** 2 + n ** 2]
      end
    end
    result
  end

  # Iterates through the returned result of the pythagorean_triplet method
  def pythagorean_triplet_printer
    pythagorean_triplet(@sum/2).each do |triplet|

      # assigns the three collection values to an array
      a, b, c = triplet[0], triplet[1], triplet[2]
      
      # Checks with each iteration if the iteration value is equal to the sum of the three values
      if a + b + c == @sum
        puts a * b * c
        break
      end
    end
  end
end

pt = PythagoreanTriplet.new(1000)
pt.pythagorean_triplet_printer

# => Answer: 31875000