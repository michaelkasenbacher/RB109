# input: array of integers
# output: integer
# goal: find the integer that appears an odd number of times.
# rules: there's always one integer that appears an odd number of times.
# algo: select count odd numbers

def find_it(arr)
  arr.select{|num| true if arr.count(num).odd?}.first
end



p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])#, 5)
p find_it([1,1,2,-2,5,2,4,4,-1,-2,5])#, -1)
p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5])#, 5)
p find_it([10])#, 10)
p find_it([1,1,1,1,1,1,10,1,1,1,1])#, 10)