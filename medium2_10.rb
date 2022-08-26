# input: integer
# output: integer
# aim: what is the difference between the sum squared and the sum of the squared integers

def sum_square_difference(num)
  arr = (1..num).to_a
  sum1 = arr.sum ** 2
  sum2 = arr.map {|num| num ** 2}.sum
  sum1 - sum2
end


p sum_square_difference(3) #== 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150