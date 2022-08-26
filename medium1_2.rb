# Write a method that can rotate the last n digits of a number. For example:
# input: int1, int2
# output: int
# goal: rotate the last n digits of int1 as specified by int2
# example 735291, 3 -> 735912: num[-3] becomes num[-1], other numbers of closer to [0]
# algo: turn into arr. pop according to int2. and << at the end

def rotate_rightmost_digits(int1, int2)
  arr = int1.digits.reverse
  arr = arr << arr.slice!(-int2)
  arr.join.to_i
end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) #== 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917