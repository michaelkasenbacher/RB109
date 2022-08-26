# input: array of integers
# output: integer

# def pairs(arr)
#   return 0 if arr.empty? || arr.size < 2
#   pairs = arr.find_all {|int| arr.count(int) >= 2}
#   pairs.size / 2
# end

def pairs(arr)
  arr.uniq.sum {|i| arr.count(i) / 2}
end

p pairs([ 2, 284, 335, 375, 531, 400, 181, 531, 284, 330, 494, 893, 375, 993 ])
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2])
p pairs([0, 0, 0, 0, 0, 0, 0])
p pairs([1000, 1000])
p pairs([])
p pairs([54])




# goal: count all pairs of integers in array
  # if empty array -> return 0
  # if no pair -> return 0
  # if there are more pairs of one integer, count each pair
  # e.g. [0,0,0,0] -> 2

# data structure: array -> string

# algo: find duplicates, return number of duplicates
