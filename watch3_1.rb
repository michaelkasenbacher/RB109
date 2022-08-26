=begin
The maximum sum subarray problem consists of finding the maximum sum of a contiguous subsequence
in an array of integers.

Example:
max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6 #=> [4, -1, 2, 1]

The easy case is when the array is made up of only positive numbers and the
  maximum sum is the sum of the whole array. If the array is made up of negative numbers, return 0 instead. 

An empty array is considered to have zero greatest sum. Note that the empty array is also a valid subarray

input: array
output: integer
goal: find the maximum sum of consecutive integers in array.
  example: [-2, 1, -3, 4, -1, 2, 1, -5, 4] = sum of 4, -1, 2, 1 which is 6
rules: if sum is negative, return 0
  if array.empty? return 0
algo: create subarray of all consecutive elements. max_by the highest sum of subarray. 
=end
def max_sequence(arr)
  return 0 if arr.empty? || arr.all? {|num| num < 0}
  
  result = []
  (0...arr.size).each do |first|
    (first...arr.size).each do |last|
      result << arr[first..last]
    end
  end
  result.max_by {|sum| sum.sum}.sum
  
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
