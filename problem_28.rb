sum = 0
n = 1
skip = 2
corner = 0

loop do
  corner += 1
  n += skip
  sum += n

  if corner == 4
    skip += 2
    corner = 0
    if skip > 1001
      break
    end
  end
end

p sum + 1

# Solution => 669171001