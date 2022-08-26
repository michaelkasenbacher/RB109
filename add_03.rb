# Write a method that will return all palindromes within a string.
# input: string
# output: array
# goal: find all palindromes
# algo: find subelements, select if subelement == subelement.reverse

def palindromes(str)
   substrings = substrings(str)
   substrings.select {|sub| sub == sub.reverse && sub.size > 1} 
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

def longest_palindrome(str)
  palindromes(str).max_by {|sub| sub.size}
end

p palindromes('ppop') == ['pp', 'pop']

# Write a method that finds the longest substring that is a palindrome within a string.


p longest_palindrome("ppop") == 'pop'
