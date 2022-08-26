=begin
You have to create a method that takes a positive integer number and returns the next
bigger number formed by the same digits:

input: integer
output: integer
goal: return the next biggest number that can be created with the input numbers.
examples: 12 -> 21
  513 -> 531
rules: it has to be the next biggest number, not any bigger number
  if none is to be found, return -1
algo: i want all combinations of the number with the same length.
    turn integer into array with digits.reverse
    
    
12 ==> 21
513 ==> 531
2017 ==> 2071
If no bigger number can be composed using those digits, return -1:
9 ==> -1
111 ==> -1
531 ==> -1
=end

# solution 1: video solution
# def next_bigger_num(input)
#   max = max_num(input)
#   (input +1..max).to_a.each do |num|
#     return num if max == max_num(num)
#   end
#   return -1  
# end

# def max_num(input)
#   input.digits.sort.reverse.join.to_i
# end

# solution 2. not as nice but maybe easier to come up with?
def next_bigger_num(input)
  max = max_num(input)
  (input+1..max).to_a.each do |num|
    return num if num.digits.sort == max.digits.sort
  end
  return -1
end

def max_num(input)
  input.digits.sort.reverse.join.to_i
end

p next_bigger_num(9) #== -1
p next_bigger_num(12) #== 21
p next_bigger_num(513) #== 531
p next_bigger_num(2017) #== 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
