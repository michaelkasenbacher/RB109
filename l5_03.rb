# Problem 3: find primes between two numbers
# Write a method that takes two numbers.
# Return an array containing all primes between the two numbers
# (include the two given numbers in your answer if they are prime).
# Don't use Ruby's 'prime' class.

# input: start integer, end integer
# output: array
# goal: return array with all prime numbers from start integer to end integer
# rules: prime class is not allowed.
# create helper method prime?
  # iterate through range start-end. 
  # have results array
  # results << if number is prime

def find_primes(start_num, end_num)
  range = (start_num..end_num).to_a
  result = []
  range.each do |num|
    result << num if prime?(num) == true
  end
  result
end

def prime?(num)
  return false if num == 1
  (2...num).none? {|element| num % element == 0}
end


p find_primes(3, 10) == [3, 5, 7]
p find_primes(11, 20) == [11, 13, 17, 19]
p find_primes(100, 101) == [101]
p find_primes(1, 100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
p find_primes(1, 2) == [2] 
# *Please note that in the video, Conrad’s solution to this test case includes the integer 1, but it should only include the integer 2 because 1 is not a prime number. Thanks to Christian L. for this disclaimer.
