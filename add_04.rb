# Write a method that takes a single String argument and returns a new string that contains
# the original value of the argument with the first character of every word capitalized
# and all other letters lowercase. You may assume that words are any sequence of non-blank characters.
# input: string
# output: string
# goal: return a string that capitalizes the first character of every word and downcases every other letter.
# algo: split words, map -> downcase, map -> capitalize. -> back to string

def word_cap(str)
  arr = str.split
  arr = arr.map {|word| word.downcase.capitalize}
  str = arr.join(" ")
end

p word_cap('four score and seven') #== 'Four Score And Seven'
p word_cap('the javaScript language') #== 'The Javascript Language'
p word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'
