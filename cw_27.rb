https://www.codewars.com/kata/5552101f47fc5178b1000050/ruby

# Some numbers have funny properties. For example:

# 89 --> 8¹ + 9² = 89 * 1
# 695 --> 6² + 9³ + 5⁴= 1390 = 695 * 2
# 46288 --> 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51

# Given a positive integer n written as abcd... (a, b, c, d... being digits) and a positive integer p
# we want to find a positive integer k, if it exists,
# such that the sum of the digits of n taken to the successive powers of p is equal to k * n.

# In other words:
# Is there an integer k such as : (a ^ p + b ^ (p+1) + c ^(p+2) + d ^ (p+3) + ...) = n * k
# If it is the case we will return k, if not return -1.

# Note: n and p will always be given as strictly positive integers.

# input: int1, int2
# output: int
# explanation: we divide int1 into separate numbers, the first number is ** by int2, the second number
# by int2+1, etc. if the sum of all numbers == int1 * some other number, return that other number.
# otherwise return -1. 
# steps: call #digits.reverse on int1.
  # iterate through arr. 
  # sum
  # check if sum is multiple of int1

  def dig_pow(int1, int2)
    arr = int1.digits.reverse
    counter = int2
    sum = arr.map.with_index {|num, idx| num ** (counter+idx)}.sum
    return -1 if sum % int1 != 0
    return sum / int1 
  end
  
  
  
  p dig_pow(89, 1)# should return 1 since 8¹ + 9² = 89 = 89 * 1
  p dig_pow(92, 1)# should return -1 since there is no k such as 9¹ + 2² equals 92 * k
  p dig_pow(695, 2)# should return 2 since 6² + 9³ + 5⁴= 1390 = 695 * 2
  p dig_pow(46288, 3)# should return 51 since 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51