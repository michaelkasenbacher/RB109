# input: array
# output: integer/float
# goal: find the one number that is not like the rest in the array.
# algo: select for non-duplicate.

# solution slow
def find_uniq(arr)
  arr.find {|num| num unless arr.count(num) > 1}
end


# solution fast
# def find_uniq(arr)
#   slice = arr.slice(0..10)
#   uniq = arr.uniq
#   uniq.find {|num| num unless slice.count(num) > 1}
# end

p find_uniq([1,1,1,1,0])#, 0)
p find_uniq([ 1, 1, 1, 2, 1, 1 ])#, 2);
p find_uniq([ 0, 0, 0.55, 0, 0 ])#, 0.55);