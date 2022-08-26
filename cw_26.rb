https://www.codewars.com/kata/5842df8ccbd22792a4000245/ruby

# input: int
# output: str
# goal: modify the int so that it returns the same number in expanded form in a string
# e.g. 10 -> '10 + 2'
# high-level: turn int into array. use index to get the right number of zeros. 
# low-level: call #digits on int. 12 -> [2,1]
  # so if we add "0" * idx -> 2, 10
  # create empty arr2
  # arr.each_with_index |num, idx|
  # arr2 << num.to_s + "0" * idx unless num == 0
  # => ["2", "10"]
  # reverse arr -> ["10", "2"]
  # join(" + ") -> ["10" + "2"]

  def expanded_form(int)
    arr1 = int.digits #[2,1]
    arr2 = []
    arr1.each_with_index do |num, idx|
      arr2 << num.to_s + "0" * idx unless num == 0
    end
    arr2.reverse.join(" + ")
  end
  
  
  p expanded_form(12); # Should return '10 + 2'
  p expanded_form(42); # Should return '40 + 2'
  p expanded_form(70304); # Should return '70000 + 300 + 4'