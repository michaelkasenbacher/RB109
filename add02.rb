# Write a method that finds all substrings in a string, no 1 letter words.

def substrings(str)
  result = []
  (0...str.size).each do |first|
    (first...str.size).each do |last|
      result << str[first..last]
    end
  end
  result.select {|sub| sub.size > 1}
end

p substrings("band") == ['ba', 'ban', 'band', 'an', 'and', 'nd']
p substrings("world") == ['wo', 'wor', 'worl', 'world', 'or', 'orl', 'orld', 'rl', 'rld', 'ld']
p substrings("ppop") == ['pp', 'ppo', 'ppop', 'po', 'pop', 'op']
