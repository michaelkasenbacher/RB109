# right One angle of the triangle is a right angle (90 degrees)
# acute All 3 angles of the triangle are less than 90 degrees
# obtuse One angle is greater than 90 degrees.

def triangle(one, two, three)
  arr = [one, two, three]

  case
  when arr.sum != 180
    return :invalid    
  when one.zero? || two.zero? || three.zero?
    return :invalid
  when one == 90 || two == 90 || three == 90
    :right
  when one < 90 && two < 90 && three < 90
    :acute
  else
    :obtuse
  end
end


p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid