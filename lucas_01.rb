























# =begin
# 23. Longest alphabetical substring

# (https://www.codewars.com/kata/5a7f58c00025e917f30000f1)
# 6 kyu
# Find the longest substring in alphabetical order.

# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".

# There are tests with strings up to 10 000 characters long so your code will need to be efficient.

# The input will only consist of lowercase characters and will be at least one letter long.

# If there are multiple solutions, return the one that appears first.

# input: string
# output: substring of input string
# goal: return the longest alphabetical substring from input string
# examples/rules: if input string is 'asd' -> longest is 'as'
# steps: string to array
# chunk substrings according to comparison with next letter
# select longest substring
# =end

# def longest(str)
#   arr = str.chars
#   arr = arr.chunk_while {|char1, char2| char1 <= char2}.to_a
#   arr.max_by {|sub| sub.size}.join("")
# end

# # p longest('asd') == 'as'
# # p longest('nab') == 'ab'
# # p longest('abcdeapbcdef') == 'abcde'
# p longest('asdfaaaabbbbcttavvfffffdf') #== 'aaaabbbbctt'
# # p longest('asdfbyfgiklag') =='fgikl'
# # p longest('z') == 'z'
# # p longest('zyba') == 'z'