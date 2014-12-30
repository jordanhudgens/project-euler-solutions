def lattice_paths(n)
  row = Array.new(n+1){1}

  n.times do
    (1..n).each {|i| row[i] = row[i] + row[i-1]}
  end

  row[-1]
end

p lattice_paths(20)

# Solution => 137846528820