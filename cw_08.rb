# Complete the function scramble(str1, str2) that returns true if a portion
# of str1 characters can be rearranged to match str2, otherwise returns false.

# Only lower case letters will be used (a-z). No punctuation or digits will be included.
# Performance needs to be considered.

def scramble(str1, str2)
  counter = 0
  while counter < str2.size
    return false unless str1.include?(str2[counter])
    # str1.delete!(str2[counter])
    counter += 1
  end
  true
  
end

p scramble('rkqodlw', 'world') #==> True
p scramble('cedewaraaossoqqyt', 'codewars') #==> True
p scramble('katas', 'steak') #==> False
p scramble("scriptjavx", "javascript") #=> True
p scramble("scriptingjava", "javascript") #=> True
p scramble("scriptsjava", "javascripts")
p scramble("javscripts", "javascript")
p scramble("aabbcamaomsccdd", "commas") #=>True
p scramble("commas", "commas") #=> True
p scramble("sammoc", "commas") #=> True
# input: two strings
# output: boolean
# goal: check if letters from str1 can be rearranged to match str2.
#   return true if yes, false otherwise
# algo: create all sub_strings of str1. see if any matches str2.

