def prime_number?(num)
  (2..num-1).none? { |divisor| num % divisor == 0 }
end

require 'prime'
7.prime?

