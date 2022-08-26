# Count the number of Duplicates
# Write a function that will return the count of distinct case-insensitive alphabetic characters
# and numeric digits that occur more than once in the input string.
# The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

# Example
# "abcde" -> 0 # no characters repeats more than once
# "aabbcde" -> 2 # 'a' and 'b'
# "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
# "indivisibility" -> 1 # 'i' occurs six times
# "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
# "aA11" -> 2 # 'a' and '1'
# "ABBA" -> 2 # 'A' and 'B' each occur twice

# solution 1
# def duplicate_count(text)
#   arr = text.downcase.chars
#   duplicates = arr.find_all {|i| arr.count(i) > 1}.uniq
#   duplicates.size
# end

# solution 2
def duplicate_count(text)
  arr = text.downcase.chars
  duplicates = arr.select {|i| arr.count(i) > 1}.uniq
  duplicates.size
end

p duplicate_count("aabbcde")# 2
p duplicate_count("")#, 0)
p duplicate_count("abcde")#, 0)
p duplicate_count("abcdeaa")#, 1)
p duplicate_count("abcdeaB")#, 2)
p duplicate_count("Indivisibilities")#, 2)


# input: string
# output: integer
# goal: return the number of characters that repeat themselves in the string
# rules: case-insenstive
  # count the number of characters not the number of repetitions