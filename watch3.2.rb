=begin
Write a method to find the longest common prefix string amongst an array of strings.
If there is no common prefix, return an empty string,

All given inputs are in lowercase letters a-z.

input: array
output: string
goal: return the longest prefix that all strings in array have in common
algo: pop last word. chars into array. iterate over array. select chars if if all? have same char at
same index?
=end

# def common_prefix(arr)
#   last = arr.pop.chars
#   result = last.select do |letter|
#     arr.all? do |word|
#       word.slice!(0) if word.start_with?(letter)
#     end
#   end
#   result.join("")
# end


p puts common_prefix(["flower", "flow", "fliwht"]) #== "fl"
# puts common_prefix(["dog", "racecar", "car"]) == ""
# puts common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
# puts common_prefix(["throne", "dungeon"]) == ""
# puts common_prefix(["throne", "throne"]) == "throne"
