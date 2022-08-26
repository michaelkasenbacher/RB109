=begin
input: integer
output: integer
aim: return the next feature number
rules: a feature number is
  -multiple of 7
  -digits occur only once 47, not 447
  -is odd
algo: count from input up to next feature number
create feature number helper method
  - return error if there's no feature number

=end

def featured(num)
  counter = num+1
  loop do
    return counter if feature?(counter)
    counter += 1
  end
end

def feature?(num)
  arr = num.digits
  return false if num.even?
  return false if num % 7 != 0
  arr.each {|n| return false if arr.count(n) > 1}
  true
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements