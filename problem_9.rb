 class PythagoreanTriplet

  def initialize(n)
    @sum = n
  end

  # Method uses nested loops to iterate through and add to collection
  def pythagorean_triplet(num)
    result = []
    (2..num).each do |m|
      (1...m).each do |n|
        result << [m ** 2 - n ** 2, 2 * m * n, m ** 2 + n ** 2]
      end
    end
    result
  end

  # Calls method recursively and only returns if a + b + c = n
  def pythagorean_triplet_printer
    pythagorean_triplet(@sum/2).each do |triplet|
      a, b, c = triplet[0], triplet[1], triplet[2]
      if a + b + c == @sum
        puts a * b * c
        break
      end
    end
  end
end

pt = PythagoreanTriplet.new(1000)
pt.pythagorean_triplet_printer