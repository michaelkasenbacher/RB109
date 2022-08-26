# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".

# input: array
# output: new array
# goal: find out how many numbers are smaller than the current number.
#   return the result at the index of the current number.
# challenges: in the new array, only count uniq numbers.
#   i.e. the array contains number 2 twice. the current number is 8. the count only adds 1.
# algo: work with two arrays: the original and a .uniq copy
  # iterate through the original array & iterate through the uniq array.
  # compare each element of original array with each element of uniq array.
  # return how many times current element of original array is greater than elements of uniq array.  

# my first solution

def smaller_numbers_than_current(array)
  array2 = array.uniq

  result = array.map do |num|
    result = []
    counter = 0
    while counter < array2.length
      result << num if num > array2[counter]
      counter += 1
    end
    result
  end

  result.map {|sub| sub.count}  
end

# my second, more difficult solution

def smaller_numbers_than_current(arr1)
  arr2 = arr1.uniq
  result = arr1.map {|arr1_num| arr2.map {|arr2_num| arr1_num > arr2_num}}
  result = result.map do |sub|
    sub.count {|x| x == true}
  end 
end

