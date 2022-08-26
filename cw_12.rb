# Given a List [] of n integers , find minimum number to be inserted in a list,
# so that sum of all elements of list should equal the closest prime number .

# List size is at least 2 .
# List's numbers will only positives (n > 0) .
# Repetition of numbers in the list could occur .
# The newer list's sum should equal the closest prime number .

# input: array with integers
# output: integer
# goal: check if the sum of integers is a prime number. if yes, return 0.
  # if no, insert the number that would make the sum the closest prime number.
# algo: # sum up array
  # check if sum matches prime
  # if yes, return 0
  # if no find out difference to next prime with helper method
  # return difference btw. method call and sum

# helper method:
  # count to next prime. starting with sum. 
  # break if counter == prime

require 'prime'

def minimum_number(arr)
  sum = arr.sum
  return 0 if sum.prime?
  next_prime = find_prime(sum)
  next_prime - sum
end

def find_prime(int)
  counter = int
  loop do
    break if counter.prime?
    counter += 1
  end
  counter
end

p minimum_number([3,1,2])#,1)
p minimum_number([5,2])#,0)
p minimum_number([1,1,1])#,0)
p minimum_number([2,12,8,4,6])#,5)
p minimum_number([50,39,49,6,17,28])#,2)