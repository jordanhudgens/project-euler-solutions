# Bring in the humanize gem, if you don't already have it install, run: gem install humanize
require 'humanize'

# Step 1:   Create an array of 1 to 1000
# Step 2:   Call the humanize method on each element to convert it to a word
# Step 3:   Iterate over the humanized array and call the delete method twice, removing spaces and dashes, adding it to the no_space_array
# Step 4:   Iterate over the cleaned collection, aka 'no_space_array', and total up the length of each word

no_space_array, total = [], 0
(1..1000).to_a.map(&:humanize).each { |word| no_space_array << word.delete(" ").delete("-") }.each { |element| total += element.length }

p total
# Solution => 24527