=begin
You are given an array of integers. Your job is to take that array and find an index N
where the sum of the integers to the left of N is equal to the sum of the integers to the right of N.
If there is no index that would make this happen, return -1. Empty arrays are equal to 0 in this problem.

input: array of integers
output: integer
goal: find the index in the array where the lefthand sum equals the righthand sum.
rules: if array is empty return 0
  example [1, 2, 3, 4, 3, 2, 1] at index 3 left == 6 and right == 6
  [1, 100, 50, -51, 1, 1] at index 1 left == 1 and right == 1
algo: have left sum and right sum. 
  increase sums from 0..0 to 0..-1
  compare sums. where they meet is index. 
=end

def find_even_index(arr)
  return 0 if arr.empty?
  left = arr
  right = arr.reverse
  left_sums = sum(left)
  right_sums = sum(right).reverse
  index = -1
  left_sums.each.with_index do |num, idx|
    index = idx if left_sums[idx] == right_sums[idx]
  end
  index
end

def sum(arr)
  result = []
  counter = 0
  while counter < arr.size
    result << arr.slice(0..counter).sum
    counter += 1
  end
  result
end

p find_even_index([]) == 0
p find_even_index([1, 2, 3, 4, 3, 2, 1]) #== 3
p find_even_index([1, 100, 50, -51, 1, 1]) #== 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3
