# Given a string of integers, return the number of odd-numbered substrings that can be formed.
# For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

# solve("1341") = 7. See test cases for more examples.

def solve(str)
  arr = substrings(str)
  arr = arr.map {|num| num.to_i}
  arr.select {|num| num.odd?}.count
end

def substrings(str)
  result = []
  (0...str.size).each do |first|
    (first...str.size).each do |last|
      result << str[first..last]
    end
  end
  result
end

p solve("1341")#7
p solve("134721")#13
p solve("1347231")#20

# input: string of integers
# output: integer
# goal: get all substrings of string, count odd-numbered substrings
# algo: get all substrings use method, 
  # select odd substrings
  # count them