https://www.codewars.com/kata/5264d2b162488dc400000001/solutions/ruby

# Write a function that takes in a string of one or more words, and returns the same string,
# but with all five or more letter words reversed (Just like the name of this Kata).
# Strings passed in will consist of only letters and spaces.
# Spaces will be included only when more than one word is present.

# input: string
# output: string
# goal: reverse every word in the string if the word.size >= 5
# overview: split the strings, modify the words if >= 5 length. 

def spinWords(str)
  arr = str.split
  arr.map do |word| 
    if word.size >= 5
      word.reverse 
    else
      word
    end
  end.join(" ")
  
end

p spinWords(spin_words("Welcome"))
p spinWords( "Hey fellow warriors" ) #=> returns "Hey wollef sroirraw" 
p spinWords( "This is a test") #=> returns "This is a test" 
p spinWords( "This is another test" )#=> returns "This is rehtona test"