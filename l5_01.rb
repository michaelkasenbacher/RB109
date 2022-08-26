# Problem 1: remove vowels from an array of strings
# Write a method that takes an array of strings and returns an array of the same string values,
# except with the vowels removed.

# input: array of strings
# output: array of strings
# goal: remove all the vowels from the strings in the array. return new array.
# algo: gsub or chars?

# def remove_vowels(arr)
#   arr.map {|word| word.gsub(/[aeiou]/, "")}
# end

p remove_vowels(['green', 'yellow', 'black', 'white'])# == ['grn', 'yllw', 'blck', 'wht']

