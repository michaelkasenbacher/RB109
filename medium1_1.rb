# Write a method that rotates an array by moving the first element to the end of the array.
# The original array should not be modified.
# Do not use the method Array#rotate or Array#rotate! for your implementation.
# input: array of integers
# output: array
# goal: rotate the integers of the array so that arr[0] becomes arr[-1] and arr[1] -> arr[0]
# rules: #rotate is not allowed
# algo: shift first element and << at end of arry

def rotate_array(arr)
  arr = arr << arr.shift
end


p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

