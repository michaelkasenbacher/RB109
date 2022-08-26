# The vowel substrings in the word codewarriors are o,e,a,io.
# The longest of these has a length of 2.
# Given a lowercase string that has alphabetic characters only (both vowels and consonants)
# and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.


# def assert_equals(str)
#   arr = str.chars
#   # arr.map.with_index {|char, idx| char if vowels.include?(char)}
#   chunks = arr.chunk_while {|a,b| a =~ /[aeiou]/ && b =~ /[aeiou]/}.to_a
#   chunks.map {|sub| sub.size}.max
# end

# solution 1
# def assert_equals(str)
#   vowels = "aeiou"
#   str = substrings(str)
#   vowel_substrings = str.select {|sub| sub.match(/\b[aeiou]+\b/)}
#   vowel_substrings.map {|sub| sub.size}.max
# end

# def substrings(str)
#   output = []
#   (0...str.length).each do |i|
#     (i...str.length).each do |j|
#       output << str[i..j]
#     end
#   end
#   output
# end

# solution 2
def assert_equals(s)
  s.scan(/[aeiou]+/)#.map {|i| i.length}.max
end

p assert_equals("codewarriors")#,2
p assert_equals("suoidea")#,3)
p assert_equals("iuuvgheaae")#,4)
p assert_equals("ultrarevolutionariees")#,3)
p assert_equals("strengthlessnesses")#,1)
p assert_equals("cuboideonavicuare")#,2)
p assert_equals("chrononhotonthuooaos")#,5)

# input: string
# output: integer

# goal: find the longest vowel chain in string
# vowels: any of aeiou

# data structure: string -> array -> integer

# algo: split in all substrings
# select substrings that consist only of vowels
# -> select longest -> return size