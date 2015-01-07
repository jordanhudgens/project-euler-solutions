# Pull in the date library
require 'date'

# Setup initial date variables using seconds to count
start_date = Time.local(1901)
end_date = Time.local(2000, 12, 31)
sunday_counter = 0

# Iterate down to the start date, one day at a time
while end_date >= start_date
  # Convert each epoch timestamp to a string and check if it's a sunday and on the first of the month
  if end_date.strftime("%A") == "Sunday" && end_date.strftime("%d") == "01"
    # If true increment the sunday counter by 1
    sunday_counter += 1
  end

  # Go back one day at a time (86400 == one day)
  end_date -= 86400
end

p sunday_counter
# Solution => 171