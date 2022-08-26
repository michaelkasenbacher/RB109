# input: array and integer
# output: array
# goal: find two integers from the array that add up to integer target number
  # return both numbers in an array
# rules: if multiple numbers add up to target, select the ones with the lowest final index.

# "solution1" contains multiple errors
# def sum_pairs(array, target)
#   result = []
#   array.each do |num1|
#     array.each do |num2|
#       return result << num1 << num2 if num1 + num2 == target
#     end
#   end
# end

# "solution2" this one almost works. but it returns the nums that start with the lowest index,
# not that end on the lowest index. 
# def sum_pairs(array, target)
#   comb = []
#   array.combination(2) {|combination| comb << combination}
#   answers = comb.select {|nums| nums if nums.sum == target}
#   answers.first
# end

# solution3. this one works but takes a long time to load and is really ugly.  
# def sum_pairs(array, target)
#   comb = []
#   array.combination(2) {|combination| comb << combination}
#   answers = comb.select {|nums| nums if nums.sum == target}
#   return nil if answers.empty?
#   last_number = []
#   comb.each {|nums| last_number << nums.last if nums.sum == target}
#   index = []
#   last_number.each {|num| index << array.rindex(num)}
#   if index.first < index.last
#     answers.first
#   else
#     answers.last
#   end
# end

# better solution
# the difficult bit of this problem is finding the right answer among the right answers.
# that is, when there are multiple answers, how to find the one where the second integer has the lowest integer.
# a solution is to create a continuously increasing array and only to search within this array. 
# and to have it stop as soon as the first correct answer comes along.
# this way the other answers aren't inlcuded in the answer array.
# so create an empty arr to which nums from the orginal array are added. 


def sum_pairs(arr, target)
  seen = []
  arr.each do |num|
    return [target - num, num] if seen.include?(target - num)
    seen << num
  end
  nil
end
p sum_pairs([10, 5, 2, 3, 7, 5], 10)

p sum_pairs([1, 4, 8, 7, 3, 15], 8)#1,7
# p sum_pairs([1, -2, 3, 0, -6, 1], -6)#0,-6
# p sum_pairs([20, -13, 40], -7)#nil
# p sum_pairs([1, 2, 3, 4, 1, 0], 2)#1,1
# p sum_pairs([10, 5, 2, 3, 7, 5], 10)#3,7
# p sum_pairs([4, -2, 3, 3, 4], 8)#4,4
# p sum_pairs([0, 2, 0], 0)#0,0
# p sum_pairs([5, 9, 13, -3], 10)#13,-3