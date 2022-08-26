# Problem 2: Fizzbuzz
=begin
write a method that takes two arguments: the first is the starting number,
and the second is the ending number.
Print out all numbers between the two numbers except if a number is divisible by 3,
print out "Fizz", if a number is divisible by 5, print out "Buzz",
and if a number is divisible by 3 and 5, print out "FizzBuzz".

fizzbuzz(1, 10)
fizzbuzz(1, 15)
=end

# input: range
# output: print out numbers or words
# goal: the input specifies a range. within this range print out all numbers
# except numbers that are divisble by 3, 5, or both. then print out Fizz, Buzz, or FizzBuzz
# algo: set counter to starting value, start counting, puts number, if divisible puts word, till end is reach

def fizzbuzz(start_num, end_num)
  counter = start_num + 1

  while counter < end_num
    if counter % 3 == 0 && counter % 5 == 0
      puts "FizzBuzz"
    elsif counter % 3 == 0
      puts "Fizz"
    elsif counter % 5 == 0
      puts "Buzz"
    else
      puts counter
    end
    counter += 1
  end
end

# fizzbuzz(1, 10)
fizzbuzz(1, 15)