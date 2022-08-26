str = "10a his T11est Thhi1s is2 her"

p str.scan("h") #=>["h", "h", "h", "h"]
p str.scan(/h/) #=>["h", "h", "h", "h"]
p str.scan("hi") #=>["hi", "hi"]
p str.scan(/hi/) #=>["hi", "hi"]
p str.scan(/[hi]/) #=>["h", "i", "h", "h", "i", "i", "h"]
p str.scan(/[hi]+/) #=>["hi", "hhi", "i", "h"]
#if multiple repetitions exist, return multiple repetitions only
p str.scan(/\bhi/) #=> ["hi"] #start word_boundary "hi"
p str.scan(/\bhi\b/) #=> [] #start word_boundary "hi" end word_boundary
p str.scan(/(?=h)/) #=> ["", "", "", ""] #spaces before "h"
p str.scan(/\s(?=h)/) #=> [" ", " "] #whitespaces before "h"


string = "heelloo world"

p string.scan("h") # => ["h"]
p string.scan("ll") # => ["ll"]
p string.scan("aeiou") # => []
p string.scan(/[aeiou]/) # => ["e", "e", "o", "o", "o"]
p string.scan(/[aeiou]+/) # => ["ee", "oo", "o"]

array = ["hello", "world", "aei"]
p array.map {|sub| sub.scan("h")} # => [["h"], [], []]
p array.map {|sub| sub.scan("ll")} # => [["ll"], [], []]
p array.map {|sub| sub.scan("aeiou")} # => [[], [], []]
p array.map {|sub| sub.scan(/[aeiou]/)} # => [["e", "o"], ["o"], ["a", "e", "i"]]
p array.map {|sub| sub.scan(/[aeiou]+/)} # => [["e", "o"], ["o"], ["aei"]]

def how_often_str2_in_str1(str1, str2)
  str1.scan(str2) # => ["bb", "bb"]
  str1.scan(str2).count # => 2
end

how_often_str2_in_str1('aa_bb_cc_dd_bb_ee', 'bb')

def vowel_chain(str)
  str.scan(/[aeiou]+/) # => ["o", "e", "a", "io"]
  str.scan(/[aeiou]+/).map {|i| i.length}.max # => 2
end

vowel_chain("codewarriors")

str1 = "is2"
str2 = "Thi1s"
str3 = "11a"

p str1.scan(/[0-9]/) #=> ["2"]
p str2.scan(/[0-9]/) #=> ["1"]
p str3.scan(/[0-9]/) #=> ["1", "1"]

p str1.scan(/[0-9]/).join.to_i #=> 2
p str2.scan(/[0-9]/).join.to_i #=> 1
p str3.scan(/[0-9]/).join.to_i #=> 11

def sort(str)
  arr = str.split
  arr.sort_by {|word| word.scan(/[0-9]/).join.to_i}.join(" ") # => "Thi1s is2 3a T4est"
end

sort("is2 Thi1s T4est 3a")