Hi all, 

Could you please help me with the correct explanation for the following example?

def test(str)
  str += '!'
  str.downcase!
end

test_str = 'Written Assessment'
test(test_str)

puts test_str

##
I want to explain that at one point variables `str` and `test_str` point to the same string object and at a later point variable `str` is reassigned and the variables now point at separate objects. However I don't know on which lines exactly this takes place.
Do `str` and `test_str` start pointing at the same object on line `1` or `7`?
Do they start pointing at separate objects on line `2` or `7`?
How would you describe what happens?

Many thanks!

## Example 2
a = "Hello"

if a
  puts "Hello is truthy"
else
  puts "Hello is falsey"
end

##
What is the correct way of describing what happens on lines `3-7`?

Does this work?
Lines `3-7` call the `if..else` statement on the string that variable `a` is referencing.
If the condition evaluates as `truthy` line `4` will be evaluated and returned.
Else, line `6` will be evaluated and returned.
Variable `a` points to an object other than `false` or `nil` and is therefore `truthy`. 
Line `6` outputs `Hello is truthy` and returns `nil`.

## Example 3
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |n| puts n }

How to correctly describe the block action?
Does this work?
The `each` method is called on the array that variable `arr` is referencing. The `{..}` is passed in as argument. 
The 