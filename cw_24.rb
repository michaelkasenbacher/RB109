https://www.codewars.com/kata/52449b062fb80683ec000024/ruby

=begin
The marketing team is spending way too much time typing in hashtags.
Let's help them with our own Hashtag Generator!

Here's the deal:

It must start with a hashtag (#).
All words must have their first letter capitalized.
If the final result is longer than 140 chars it must return false.
If the input or the result is an empty string it must return false.
Examples
" Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
"    Hello     World   "                  =>  "#HelloWorld"
""                                        =>  false

input: string
output: string
goal: transform string so that it
 - starts with #
 - all words are capitalized
 - strip whitespace
 -return false if string.size > 140 or str.empty
 algo: split -> arr -> capitalize -> append # -> count
=end

def generateHashtag(str)
  arr = str.split
  str = arr.map{|word| word.capitalize}.join("")
  return false if str.empty?
  output = str.insert(0, "#")
  return false if output.size > 140
  output
end

# p generateHashtag(" Hello there thanks for trying my Kata")#  =>  "#HelloThereThanksForTryingMyKata"
# p generateHashtag("    Hello     World   ")#                  =>  "#HelloWorld"
# p generateHashtag("")#                                        =>  false
p generateHashtag(" " * 200)