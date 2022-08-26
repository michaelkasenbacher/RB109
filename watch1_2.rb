=begin
Given an array of strings made only from lowercase letters, return an array of all characters
that show up in all strings within the given array (including duplicates).
For example, if a character occurs 3 times in all strings but not 4 times, you need to include
that character three times in the final answer.

input: array
output: array
goal: find all letters that appear in all words and add them to a new array.
  rules: if the same letter appears multiple times in all words, add the letter multiple times. 
  if no letter is common, return empty array.
algo: pop one element. iterate through the orignal arr. if letter appears in all others << result array
delete letter in comparision array. 
=end

def common_chars(arr)
  clone = arr.map {|word| word.clone}
  last_word = clone.pop.chars
  last_word.select do |letter|
    clone.all? do |word|
      word.sub!(letter, "")
    end
  end
end

p common_chars(['bella', 'label', 'roller']) #== ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) #== ['c', 'o']
p common_chars(['aabbaa', 'cccdddd', 'eeffee', 'ggrrrr']) == []

