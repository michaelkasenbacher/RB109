# input: array of integers
# output: hash
# goal: return a hash with the integer as key and the frequency as value
# rules: no use of #count or #length
  # empty array or nil should return nil
# algo: tally?




# great solution is #tally is allowed
# def group_and_count(arr)
#   return nil if arr.empty? || arr == nil
#   arr.tally
# end

def group_and_count(arr)
  return nil if arr.empty? || arr == nil

  hsh = arr.map.with_object({}) do |num, hsh|
    hsh[num] = 0
  end
  
  for num in arr
    hsh[num] += 1
  end

  hsh
end

# p group_and_count([0,1,1,0])# {0=>2, 1=>2})