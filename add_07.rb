# Given a string, find all those substrings contained in it of at
# least two characters where the substring is adjacent to a substring that is the reverse of itself.

p find_reverse_substrings('1221345543') == ["12", "21", "345", "543", "45", "54"]
p find_reverse_substrings('beeekkeeper') == ["eek", "kee", "ek", "ke"]
p find_reverse_substrings('1111111') == ["11", "111"]
p find_reverse_substrings('hellolleh') == []





# input: string
# output: array
# goal: return all substrings that are the inverse of the subsequent substring 
# rules: substrings need to be at least 2 characters long
  # if no matching substrings, return [].
# algo: find all substrings. select sub.size >= 2. select sub == sub.reverse

# solution 1
# def find_reverse_substrings(str)
#   arr = substrings(str)
#   arr = reverse?(arr)
#   result = []
#   arr.each {|num| result << num.slice(0...num.size/2) << num.slice(num.size/2..-1) }
#   result.reject {|num| num.size == 1}.uniq
# end

# def reverse?(arr)
#   arr.select {|num| num if num.slice(0...num.size/2) == num.slice(num.size/2..-1).reverse}
# end

# def substrings(str)
#   result = []
#   (0...str.size).each do |first|
#     (first...str.size).each do |last|
#       result << str[first..last]
#     end
#   end
#   result  
# end

# solution 2
def find_reverse_substrings(string)
  substrings = find_substrings(string)
  mirror_image_substrings(substrings)
end

def find_substrings(string)
  results = []
  (0..string.length - 4).each do |start_index|
    (start_index + 3..string.length - 1).each do |end_index|
      substring = string[start_index..end_index]
      results << substring if substring.size.even?
    end
  end
  results
end

def mirror_image_substrings(substrings)
  results = []
  substrings.each do |substring|
    left_half = substring[0...substring.size / 2]
    right_half = substring[substring.size / 2..-1]
    if left_half == right_half.reverse
      results << left_half if left_half.size > 1
      results << right_half if right_half.size > 1
    else
      next
    end
  end
  results.uniq
end


p find_reverse_substrings('1221345543') == ["12", "21", "345", "543", "45", "54"]
p find_reverse_substrings('beeekkeeper') == ["eek", "kee", "ek", "ke"]
p find_reverse_substrings('1111111') == ["11", "111"]
p find_reverse_substrings('hellolleh') == []