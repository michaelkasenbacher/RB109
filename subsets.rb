
def sum_pairs(arr, target)
  seen = []
  arr.each do |num|
    return [target - num, num] if seen.include?(target - num)
    seen << num
  end
  nil
end
p sum_pairs([10, 5, 2, 3, 7, 5], 10)
# subset("string")