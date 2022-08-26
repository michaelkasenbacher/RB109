# input: 3 integers
# output: 4 possible symbols
# aim: identify what type of triangle the 3 integers describe and whether the triangle is valid.
# rules:
  # equilateral All 3 sides are of equal length
  # isosceles 2 sides are of equal length, while the 3rd is different
  # scalene All 3 sides are of different length
  # To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the
  # length of the longest side, and all sides must have lengths greater than 0:
  # if either of these conditions is not satisfied, the triangle is invalid.
# algo: work with cases

def triangle(side1, side2, side3)
  arr = [side1, side2, side3]
  case
  when side1.zero? || side2.zero? || side3.zero?
    return :invalid
  when arr.max > arr.min(2).sum
    return :invalid
  when side1 == side2 && side1 == side3
    :equilateral
  when side1 == side2 || side2 == side3
    :isosceles
  else
    :scalene
  end
end


p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid