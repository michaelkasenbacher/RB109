# A pangram is a sentence that contains every single
# letter of the alphabet at least once. For example,
# the sentence "The quick brown fox jumps over the lazy dog"
# is a pangram, because it uses the letters A-Z at least once
# (case is irrelevant).

# Given a string, detect whether or not it is a pangram.
# Return True if it is, False if not. Ignore numbers and punctuation.

# input: string
# output: boolean
# goal: check if string is pangram.
# a pangram is a sentence that uses every letter of alphabet at least once.
# return true, if true and false otherwise.

# solution 1

# def pangram?(str)
#   str = str.downcase
#   a_z = ('a'..'z').to_a.join("")
#   while a_z.size >= 1
#     return false unless str.include?(a_z[-1])
#     a_z.chop!
#   end
#   true
# end

# solution 2

def pangram?(str)
  ('a'..'z').to_a.all? {|letter| str.downcase.include?(letter)}
end

p pangram?("The quick brown fox jumps over the lazy dog.")
p pangram?("treated as ordinary text")

# algo: turn string to lowercase
  # create string a..z
  # check if string contains a_z string pop