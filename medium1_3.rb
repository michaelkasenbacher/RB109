=begin
If you take a number like 735291, and rotate it to the left, you get 352917.
If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175.
Keep the first 2 digits fixed in place and rotate again to 321759.
Keep the first 3 digits fixed in place and rotate again to get 321597.
Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579.
The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument.
You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.
Note that you do not have to handle multiple 0s.

input: integer
output: integer
goal: rotate integer to maxium rotation
example:
step 1: 735291 -> 352917 = a[0] -> a[-1]
step 2: 352917 -> 329175 = a[1] -> a[-1]
step 3: 329175 -> 321759 = a[2]
step 4: 321759 -> 321597 = a[3]
step 5: 321597 -> 321579 = a[4]

so 5 rotation if 6 numbers 

algo: turn into arr.
  determine number of rotations. = size -1
  loop: rotate at at a[0]..a[number of rotations -1]
=end

def max_rotation(int)
  arr = int.digits.reverse
  rotations = arr.size-1
  counter = 0
  rotations.times do
    rotate_digits(arr, counter)
    counter += 1
  end
  arr.join.to_i
end

def rotate_digits(arr, int2)
  arr = arr << arr.slice!(int2)
  arr.join.to_i
end


p max_rotation(735291) #== 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845