# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# Examples:

# best solution I know:
def minimum_sum(array)
  return nil if array.size < 5
  array.each_cons(5).map {|nums| nums.sum}.min
end


# solution 1

def minimum_sum(array)
  return nil if array.size < 5
  sum = []
  start_counter = 0
  end_counter = 5
  
  while end_counter <= array.size
    sum << array.slice(start_counter...end_counter).sum
    start_counter += 1
    end_counter += 1
  end

  sum.min
end

# solution 2

def minimum_sum(array)
  return nil if array.size < 5
  clone = array.clone
  sum = []

  while clone.size >= 5
    sum << clone.slice(0...5).sum
    clone.shift
  end

  sum.min
end


p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".

# input: array of integers
# output: integer
# goal: find the minium sum of 5 consecutive numbers in the array.
# challenges: find all 5 consecutive numbers in array.
  # find the array with the smallest sum
# algo: check if array contains minimum 5 elements. return nil otherwise
  # initialize variable results to an empty array
  # use slice 0...5 to find first 5 elements. 
  # call sum on the first subarray and send result to results
  # increase starting and end element by one. use start_counter and end_counter
  # call min on results array -> answer. 

