https://www.codewars.com/kata/523a86aa4230ebb5420001e1/ruby

# Write a function that will find all the anagrams of a word from a list.
# You will be given two inputs a word and an array with words.
# You should return an array of all the anagrams or an empty array if there are none. For example:
# input: str and arr
# output: arr
# goal: return the strings from the array that contain the same letters as the second input string.
# algo: arr select if word.sort == str.sort

def anagrams(str, arr)
  arr.select {|word| word.chars.sort == str.chars.sort}
end



p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada'])# => ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer'])# => ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer'])# => []