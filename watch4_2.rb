=begin
Write a function scramble(str1, str2) that returns true if a portion of str1 characters
can be rearranged to match str2, otherwise, return false.

input: two strings
output: boolean
goal: verify if elements from str1 can be rearranged to match str2.
  true if yes, false otherwise
example: 'javaass' cannot be rearranged to 'jjss' since it misses a second 'j'
algo: turn str2 into chars array. iterate through it. see if all? elements are contained in str1.
delete element from str1 when it matches.
=end

# solution 1
# def scramble(str1, str2)
#   arr = str2.chars
#   arr.all? do |letter|
#     str1.sub!(letter, "")
#   end
# end

# solution 2
def scramble(str1, str2)
  str2_chars = str2.chars
  str2_chars.each do |char2|
    return false if str2.count(char2) > str1.count(char2)
  end
  true
end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true
