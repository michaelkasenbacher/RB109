# Problem 2: balancer
# Write a method that takes a string and returns a boolean indicating if this string
# has a balanced set of parentheses.

# input: string
# output: boolean
# goal: the string contains parentheses. check if the parentheses are even. same number of ( as )
# and check if the order is correct.
# iterate through string. count up for ( and count down for )
# at the end return true if count is even
# return false if count gets negative at any point. 


def balancer(str)
  arr = str.chars
  counter = 0
  arr.each do |char|
    counter += 1 if char == "("
    counter -= 1 if char == ")"
    return false if counter < 0
  end
  return true if counter == 0
  false
end


p balancer("(hi") #== false
p balancer("(hi)") #== true
p balancer("(()) hi") #== true
p balancer(")(") #== false
