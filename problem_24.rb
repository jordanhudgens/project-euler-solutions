# Step 1: Give the array
# Step 2: Call the permutation method on it
# Step 3: Convert the returned enumerator to an array
# Step 4: Grab the 1,000,000 element in the array
# Step 5: Convert the element to a string

p [0, 1, 2, 3, 4, 5, 6, 7, 8, 9].permutation.to_a[999_999].join

# Solution => 2783915460