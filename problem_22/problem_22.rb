def score_for_name(name)
  sum = 0
  name.each_byte { |c| sum += c - 64 }
  sum
end
 
text = File.open("names.txt", "r").gets 
names = text.gsub!('"','').split(',').sort
 
total = 0
names.each_with_index { |name, index| total += score_for_name(name) * (index + 1) }
puts total