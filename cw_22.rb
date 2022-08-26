https://www.codewars.com/kata/51edd51599a189fe7f000015/ruby

=begin 
Complete the function that accepts two integer arrays of equal length
compares the value each member in one array to the corresponding member in the other
squares the absolute value difference between those two values
and returns the average of those squared absolute value difference between each member pair.
Examples
[1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3
[10, 20, 10, 2], [10, 25, 5, -2]  -->  16.5 because (0 + 25 + 25 + 16) / 4
[-1, 0], [0, -1]                  -->   1   because (1 + 1) / 2

input: arr1, arr2
output: float
goal: get difference btw. arr1[n] and arr2[n] -> square it -> get sum of differences -> divide by size
=end

def solution(arr1, arr2)
  counter = 0
  arr = []
  while counter < arr1.size
    arr << (arr1[counter] -arr2[counter]).abs
    counter += 1
  end
  arr.map {|num| num * num}.sum.fdiv(arr.size)
end

p solution([1, 2, 3], [4, 5, 6])#, 9)
p solution([10, 20, 10, 2], [10, 25, 5, -2])#, 16.5)
p solution([-1, 0], [0, -1])#, 1)