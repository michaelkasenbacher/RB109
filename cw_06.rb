# For a given nonempty string s find a minimum substring t and the maximum number k,
# such that the entire string s is equal to t repeated k times.

# The input string consists of lowercase latin letters.
# Your function should return :
# an array [t, k] (in Ruby and JavaScript)

# Example #1:
# for string s = "ababab"; the answer is ("ab", 3)

# Example #2:
# for string s = "abcde" the answer is ("abcde", 1)
# because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.

def f(str)
  arr = substrings(str)
  arr = arr.select {|sub| sub.size > 1}
  group = arr.group_by {|sub| arr.count(sub)}.max
  frequency = group[0]
  longest_sub = group[1].max_by {|str| str.size}
  
  # substring = arr.max_by {|sub| arr.count(sub)}
  # longest_substring = arr.max_by {|sub| sub.size}
  # frequency = arr.count(substring)
  # substring = longest_substring if frequency == 1
  answer = [longest_sub, frequency]
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

p f("ababab")
p f("abcde")
p f("ababhohhoh")



# input: string
# output: array containing a string and an integer
# goal: check if the string contains any substrings.
  # a substring is a collection of letters that repeats itself in the string
  # identify the substring
  # return the number of times the substring repeats itself
# algo: return all substrings
  # select substrings that are longer than 1
  # select most common substring
  # count it


