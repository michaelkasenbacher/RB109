# input: array of integers
# output: integer
# goal: find the index where the sum of left side and sum of right side match
# rules: if none can be found, return -1
  # if the right index is 0, return 0. 
# algo: create arr with sums. 
# start with 0..-1, 0..-2, ... 0 for left side
# -1..0, ... -1 for right side.
# see if they match

# solution 1
# def find_even_index(arr)
#   clone = arr.clone
#   index = -1
#   left = left_side(arr)
#   right = right_side(clone)
#   left.each.with_index {|num, idx| return index = idx if num == right[idx]}
#   index
# end

# def left_side(arr)
#   result = []
#   while arr.size > 0
#     result << arr.inject(:+)
#     arr.pop
#   end
#   result.reverse
# end

# def right_side(arr)
#   result = []
#   while arr.size > 0
#     result << arr.inject(:+)
#     arr.shift
#   end
#   result
# end

# solution 2
def find_even_index(arr)
  left_sum = 0
  right_sum = arr.inject(:+)
  
  arr.each_with_index do |num, idx|
    right_sum -= num
    return idx if left_sum == right_sum
    left_sum += num
  end
  
  -1  
end



p find_even_index([1,100,50,-51,1,1])#,1)
# p find_even_index([1,2,3,4,5,6])#,-1)
# p find_even_index([20,10,30,10,10,15,35])#,3)
# p find_even_index([1,2,3,4,3,2,1])#,3)
# p find_even_index([20,10,-80,10,10,15,35])#,0)
# p find_even_index([10,-80,10,10,15,35,20])#,6)
# p find_even_index(Array(1..100))#,-1)
# p find_even_index([0,0,0,0,0])#,0,"Should pick the first index if more cases are valid")
# p find_even_index([-1,-2,-3,-4,-3,-2,-1])#,3)
