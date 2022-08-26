=begin
43. Transform To Prime
(https://www.codewars.com/kata/5a946d9fba1bb5135100007c/train/ruby)
6 kyu
Task :
Given a List [] of n integers , find the minimum number to be inserted in a list, so that the sum of all
elements of the list should equal the closest prime number .

Notes
List size is at least 2 .
List's numbers will only have positives (n > 0) .
Repetition of numbers in the list could occur .
The newer list's sum should equal the closest prime number .

Input >> Output Examples
1- minimumNumber ({3,1,2}) ==> return (1)
Explanation:
Since , the sum of the list's elements equal to (6) , the minimum number to be inserted to transform the sum to prime number is (1) , which will make *the sum of the List** equal the closest prime number (7)* .
2-  minimumNumber ({2,12,8,4,6}) ==> return (5)
Explanation:
Since , the sum of the list's elements equal to (32) , the minimum number to be inserted to transform the sum to prime number is (5) , which will make *the sum of the List** equal the closest prime number (37)* .
3- minimumNumber ({50,39,49,6,17,28}) ==> return (2)
Explanation:
Since , the sum of the list's elements equal to (189) , the minimum number to be inserted to transform the sum to prime number is (2) , which will make *the sum of the List** equal the closest prime number (191)* .

input: array of integers
output: integer
goal: sum up integers in array and check if they match a prime number, if yes return 0
  if no, find the difference to next prime number and return it.
steps: helper method that checks if number is prime?
    sum input array and compare to prime?
    return 0 if true
  else we go looking for next prime number
    start loop at sum+1 
    counter starts at 1
    and break when counter == prime?
    return that number
=end

def minimum_number(arr)
  return 0 if prime?(arr.sum)
  counter = 1
  loop do
    return counter if prime?(arr.sum + counter)
    counter += 1
  end
end

def prime?(num)
  return false if num == 1
  (2...num).none? {|n| num % n == 0}
end


p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) #== 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2