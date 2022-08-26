=begin
Given 2 strings, your job is to find out if there is a substring that appears
in both strings. You will return true if you find a substring that appears in both strings,
and false if not. A substring is longer than 1 character.
=end

# input: two strings
# output: boolean
# goal: check if there's a substring that appears in both strings. return true if so, false otherwise.
# rules: substrings has to be longer than 1 character
  # substring has to be consecutive
  # example: 'ome' appears in 'something'
  # no concern for upper or lower case.
# algo: create array with all consecutive substrings of string 2 that are equal or longer than 2. 
# check if the substrings is included in string 1. 

def substring_test(str1, str2)
  return false if str1.size < 1 || str2.size < 1
  arr = substring(str2)
  arr.map!{|sub| sub.downcase}
  arr.select!{|sub| sub.size >= 2}
  arr.any? {|sub| str1.downcase.include?(sub)}
end


def substring(string)
  result = []
  (0...string.size).each do |first|
    (first...string.size).each do |last|
      result << string[first..last]
    end
  end
  result  
end


p substring_test('Something', 'Fun') == false
puts substring_test('Something', 'Home') == true
puts substring_test('Something', ' ') == false
puts substring_test('BANANA', 'banana') == true
puts substring_test('test', 'llt') == false
puts substring_test(' ', ' ') == false
puts substring_test('1234567', '541265') == true
