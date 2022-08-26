Line `1` initializes variable `a` to string `hello`.
Line `2` initializes variable `b` to the object that `a` is referencing. Variables `a` and `b` point at the same object.
Line `3` initializes variable `c` to the object that `a` is referencing. Variables `a`, `b`, and `c` point at the same object. 
Line `4` reassigns variable `a` to the return value of the non-destructive method call `+` on the object that `a` is referencing with string ` world` passed in as argument. This assigns `a` to the new object `hello world`. Now `a` no longer points at the original object to which variables `b` and `c` still point. 
Line `5` calls the destructive `<<` method on the object which variable `c` -- and also variable `b` -- references and passes in the object ` world` as an argument. This mutates the object and now variables `b` and `c` point at the mutated object `hello world`. This is still the original object. 

After the variable reassignment on line `4` variables `a` and `b` no longer point at the same object. The following code shows this: 



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



3.0.0 :001 > arr = [5,11,15,20]
 => [5, 11, 15, 20] 
3.0.0 :002 > counter = 0
 => 0 
3.0.0 :003 > arr[counter]
 => 5 
3.0.0 :004 > arr[counter+1]
 => 11 
3.0.0 :005 > arr[counter+1] - arr.counter[0]
Traceback (most recent call last):
        4: from /Users/michaelkasenbacher/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `<main>'
        3: from /Users/michaelkasenbacher/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `load'
        2: from /Users/michaelkasenbacher/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/irb-1.3.0/exe/irb:11:in `<top (required)>'
        1: from (irb):5:in `<main>'
NoMethodError (undefined method `counter' for [5, 11, 15, 20]:Array)