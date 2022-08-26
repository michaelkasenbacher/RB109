# Complete the greatestProduct method so that it'll find the greatest product of five consecutive digits
# in the given string of digits.

def greatest_product(str)
  array = substrings_with_length(str, 5)
  array = array.map {|sub| sub.chars}
  array = array.map {|sub| sub.map {|str| str.to_i}}
  array.map {|sub| sub.inject(:*)}.max
end


def substrings_with_length(string, length)
  result = []
  0.upto(string.size - length) do |char|
    result << string[char...char+length]
  end
  result
  
end

p greatest_product("123834539327238239583")#, 3240)
p greatest_product("92494737828244222221111111532909999")#, 5292)
p greatest_product("02494037820244202221011110532909999")#, 0)


# input: string
# output: integer
# goal: return the greatest product of 5 consecutive substrings.
# algo: create array with all substrings that are 5 elements long.
  # turn strings into integers
  # return product. 