# Problem 1: Reverse a string without using the built-in #reverse method
=begin
take a string as an argument, return the string in reverse order without using the built-in reverse method.
reverse_string("abcde") == "edcba"
reverse_string(" ") == " "
reverse_string("football") == "llabtoof"
=end

# solution 1
# def reverse_string(str)
#   length = str.size
#   arr = str.chars
#   reversed = ""
#   length.times do
#     reversed << arr.pop
#   end
#   reversed
# end

# solution 2
def reverse_string(str)
  length = str.size
  arr = str.chars
  result = ''
  counter = -1
  length.times do
    result << arr[counter]
    counter -= 1
  end
  result

end

p reverse_string("abcde")
p reverse_string(" ") == " "
p reverse_string("football") == "llabtoof"
# input: string
# outpu: string
# goal: reverse the original string without using .reverse method.
# chop last element, string.size times, shovel chopped element into array or string
