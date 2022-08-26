=begin
Find the length of the longest substring in the given string that is the same in reverse.

Example:
longest_palindrome("I like racecars that go fast") == 7

If the length of the input string is 0, return value must be 0

input: string
output: integer
goal: find the longest palindrome in string. return its size.
rules: if string.empty? -> 0
  palindrome reads the same forwards and backwards. example 'racecar'
algo: return continuous substrings. select substrings that read the same forwards and backwards.
select the longest. return size.
=end

def longest_palindrome(str)
  return 0 if str.size < 1
  arr = substring(str)
  palindromes = palindrome?(arr)
  palindromes.max_by {|sub| sub.size}.size

end

def palindrome?(arr)
  arr.select {|sub| sub if sub == sub.reverse}
  
end

def substring(str)
  result = []
  (0...str.size).each do |first|
    (first...str.size).each do |last|
      result << str[first..last]
    end
  end
  result
end


puts longest_palindrome('') == 0
puts longest_palindrome('a') == 1
puts longest_palindrome('aa') == 2
puts longest_palindrome('baa') == 2
p longest_palindrome('aab') #== 2
p longest_palindrome('baabcd') #== 4
p longest_palindrome('baab1kj12345432133d') #== 9
p longest_palindrome("I like racecars that go fast") #== 7
