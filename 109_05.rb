# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

# Examples:

# better solution
def least_common_char(str)
  arr = str.downcase.chars
  arr.min_by {|char| str.downcase.count(char)}
end

def least_common_char(string)
  array = string.downcase.chars
  multiples = array.find_all {|element| array.count(element) > 1}

  return array[0] if array.all? {|element| element == array[0]}

  counter = 0
  while counter <= array.size
    return array[counter] unless multiples.include?(array[counter])
    counter += 1
  end
end


p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'

# The tests above should print "true".

# input: string
# output: string
# return the letter that occurs the least often of the input string.
# if there are multiple such letters, select the first one.
# challenge: count how often each letter occurs. 