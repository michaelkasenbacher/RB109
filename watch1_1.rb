=begin
Given a non-empty string, check if it can be constructed by taking a substring of it and
appending multiple copies of the substring together.
You may assume the given string consists of lowercase English letters only.

Example 1:
 - Input "abab"
 - Output: True
 - Explanation: It's the substring 'ab' twice.

Example 2:
 - Input: "aba"
 - Output: False

input: string
output: boolean
goal: check if the string can be composed of substrings. return true if yes, false otherwise
  # example 'abab' = 'ab' + 'ab' -> true
        'aba' doesn't work for any substring.
rules: string can consists of more than 2 substrings, ie. 'aaaaa' = 'a' 5 times. 
  # substring can be 1 character long
algo: get all substrings. check if string is multiple of substring. if yes, true. 
=end

# solution 1
def repeated_substring(str)
  arr = str.chars
  return true if arr.all? {|element| element == arr[0]}
  arr = substrings(str)
  arr.select {|char| char if char.size <= str.size / 2 }
  result = []
  arr.each do |sub|
    sub_sum = ""
    loop do
      sub_sum << sub
      break if sub_sum.size >= str.size
    end
    return true if sub_sum == str
  end
  false
end

def substrings(str)
  output = []
  (0...str.length).each do |i|
    (i...str.length).each do |j|
      output << str[i..j]
    end
  end
  output
end


# solution 2

def substrings(str)
  result = []
  1.upto
end

# p repeated_substring('abab') == true
# p repeated_substring('aba') == false
# p repeated_substring('aabaaba') == false
# p repeated_substring('abaababaab') #== true
p repeated_substring('abcabcabcabc') #== true
# p repeated_substring('aaaaa') == true
