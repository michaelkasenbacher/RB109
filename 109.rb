# Explain what is happening on line 2, and why this line returns the Integer 6.
# Looking at the structure of my_arr and the way that 6 is returned,
# what concept regarding collections in Ruby does this demonstrate?

my_arr = [1, [4, 3, 5, [6, 8]], 7]
my_arr[1][3][0] #=> 6 
p my_arr[1]
p my_arr[1][3]