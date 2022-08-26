=begin
input: integer
output: integer
goal: find the integer th fib number without using recursion
rules: fib number is sum of previous two numbers fib numbers
1,1,2,3,5,8,13
=end
def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end



p fibonacci(10) #== 6765
# fibonacci(100) == 354224848179261915075
# fibonacci(100_001) # => 4202692702.....8285979669707537501