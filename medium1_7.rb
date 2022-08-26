=begin
Write a method that takes a sentence string as input, and returns the same
string with any sequence of the words
'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'
converted to a string of digits.

input: string
output: string
goal: convert the written numbers in the string to digits. return new string.
algo: create array with written numer and digit. 
  sub! number for digit. 
=end

# def word_to_digit(str)
#   one = ["one", "1"]
#   two = ["two", "2"]
#   three = ["three", "3"]
#   four = ["four", "4"]
#   five = ["five", "5"]
#   six = ["six", "6"]
#   seven = ["seven", "7"]
#   eight = ["eight", "8"]
#   nine = ["nine", "9"]
#   zero = ["zero", "0"]

#   str.gsub!(one[0], one[-1])
#   str.gsub!(two[0], two[-1])
#   str.gsub!(three[0], three[-1])
#   str.gsub!(four[0], four[-1])
#   str.gsub!(five[0], five[-1])
#   # etc.

# end

HSH = {"one" => "1", "two" => "2", "three" => "3", "four" => "4", "five" => "5"}

def word_to_digit(str)
  HSH.each do |key, value|
    str.gsub!(key, value)
  end
  str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')
#== 'Please call me at 5 5 5 1 2 3 4. Thanks.'