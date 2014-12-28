# Cached version for problem 14 provided by: http://recurial.com/

# Implements caching by utilizing a hash
@h = Hash.new

# Logic of the algorithm with recursive call to the calc_seq method
def calc_seq(num, steps)
  if @h[num]
    @h[num] + steps - 1
  elsif num == 1
    steps
  elsif num % 2 == 0
    calc_seq(num / 2, steps + 1)
  else
    calc_seq(3 * num + 1, steps + 1)
  end
end

def calc_seq_cache(num)
  @h[num] = calc_seq(num,1)
end

(1..1_000_000).each do |num|
  calc_seq_cache(num)
end

# Pulls out the max value from the Hash after inverting the key/value pairs
puts @h.invert[@h.values.max]

# Solution => 837799