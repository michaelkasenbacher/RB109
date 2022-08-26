def closest_numbers(arr)
  p arr = arr.sort
  arr.each_cons(2).map {|num1, num2| num2-num1}
  arr.sort_by do |num1, num2|
    num2-num1 unless num2 == nil
  end
    
end