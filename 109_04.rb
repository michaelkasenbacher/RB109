# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# Examples:

def closest_numbers(array)
  sorted = array.sort
  difference = []

  while sorted.size >= 2
    difference << sorted[1] - sorted[0]
    sorted.shift
  end

  difference
  sorted = array.sort
  min = difference.min
  index = difference.index(min)
  sorted.slice(index, 2)


end

# solution 2: much better
def closest_numbers(arr)
  arr = arr.sort
  arr.each_cons(2).min_by {|num1, num2| num2-num1}
end
  

p closest_numbers([5, 25, 15, 11, 20]) #== [15, 11]
# p closest_numbers([19, 25, 32, 4, 27, 16]) #== [25, 27]
# p closest_numbers([12, 7, 17]) #== [12, 7]

# The tests above should print "true".

# input: array
# output: array
# goal: return an array that contains the two integers of the input array that are closest together in value
# challenge: finding the two integers that are closest together in value.
# algo: sort the array, check for difference between integers, select the two with smallest difference.
# subtract smaller from higher, where difference smallest, is the correct answer. 

