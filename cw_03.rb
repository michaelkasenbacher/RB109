# Complete the solution so that it returns the number
# of times the search_text is found within the full_text.

# def solution(str1, str2)
#   str1 = substrings(str1)
#   str1.select {|sub| sub == str2}
#   str1.count(str2)
# end

# def substrings(str)
#   output = []
#   (0...str.length).each do |i|
#     (i...str.length).each do |j|
#       output << str[i..j]
#     end
#   end
#   output
# end

# solution 2
def solution(str1, str2)
  str1.scan(str2).count
end


p solution('aa_bb_cc_dd_bb_ee', 'bb') # should return 2 since bb shows up twice
p solution('aaabbbcccc', 'bbb') # should return 1

# input: two strings
# output: integer

# goal: search str1 for the number of times it contains str2.
# output that integer as answer. 

# data structure: string -> integer

# algo: str1.count(str2)