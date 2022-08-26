def multiple(int)
  result = []
  counter = 1

  while counter < int
    if counter % 3 == 0
      result << counter
    elsif counter % 5 == 0
      result << counter
    end
    counter += 1
  end

  result.sum
end

p multiple(10)
p multiple(20)
p multiple(200)

# test(10, 23)
# test(20, 78)
# test(200, 9168)

# input: integer
# output: integer
# goal: identify all numbers that are multiples of 3 or 5 under target number.
  # return sum of all those number
# algo: conditional, select if multiple of 3 or 5