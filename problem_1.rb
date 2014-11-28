# This is a very elegant solution to Problem One, can't take credit for this one, it was written by: http://codereview.stackexchange.com/users/25441/john-schmidt
# As opposed to creating an iterative approach the coder created a mathematical algorithm for finding the multiples and sums and then combined the results.

class ProjectEulerOne
  def sum_all_multiples_ab(a, b, max)
    sum = sum_all_multiples(a, max)
    sum += sum_all_multiples(b, max)
    sum -= sum_all_multiples(a * b, max)
    sum
  end


  def sum_all_multiples(n, max)
    count = (max - 1) / n
    last = count * n
    sum = ((n + last) / 2.0) * count
    sum
  end
end

result = ProjectEulerOne.new
p result.sum_all_multiples_ab(3, 5, 10)
