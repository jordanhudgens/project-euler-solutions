class Integer
  def divisors_sum
    n = self

    return 0 if n == 1
     
    sum = 1 
    sqrt = Math.sqrt(n)
          
    (2..sqrt).each do |i|
      if n % i == 0       
        sum += n / i if i != sqrt
        sum += i
      end
    end
     
    sum  
  end
 
  def abundant?
    self < divisors_sum
  end
end
 
abundant_numbers = (1..28123).select { |n| n.abundant? }
 
ans = []
abundant_numbers.each do |x| 
  abundant_numbers.each do |y|
    s = x + y
    break if s > 28123
    ans << s
  end
end

not_ans = (1..28123).to_a - ans
p not_ans.inject(0) { |agg, n| agg + n }

# Solution => 4179871