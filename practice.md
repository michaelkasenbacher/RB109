Example 24

This code demonstrates the concept of `variables as pointers and object passing`:
In Ruby, variables are references to objects and don’t contain objects themselves.
When an object is passed in as an argument to a method call, the method parameter acts as a pointer to the original object-until the parameter is assigned to a new object.

It also demonstrates the concept of `mutating methods`:
Mutating methods change the value of the calling object’s space in memory. 

Variables `s` and `t` point to the same string object `HELLO!`
Line `7` initialises variable `s` to string `hello`
and line `8` initialises variable `t` to the return value of method `fix` with the string that variable `s` is referencing passed in as argument.
Lines `1-5` define method `fix` which has one parameter called `value`
Line `2-3` mutate the object that variables `value` and `s` are referencing.
The destructive methods used are `upcase!` and `concat`
The variables now point to string `HELLO!`

Example 35

This code demonstrates the `select` method:
The `select` method returns a new array based on the truthiness of the block’s return value. If the return value evaluates to `true`, then the element is selected and added to the new array. Otherwise, the element is skipped and not added to the new array. If no element is selected, the return value is `[]`. 

line `384` initalises variable `arr` to an array object with integers `1 ..10` as elements. 
line `386` calls the `select` method on the object that `arr` is referencing with the `{..}` block passed in as argument. The block's return value is truthy if the integer element is odd.   
The return value of method `select` is a new array populated with the odd integer elements of `arr`. The `select` method returns a new array based on the truthiness of the block's return value. If the return value evalutes to `true` then the element is select and added t the new array.

7 minutes

Example 20

This code demonstrates the concept of `local variable scope`:
A local variable’s scope is determined by where it is inititalized.
Methods can only access local variables that were initialized inside the method or that are defined as parameters.

This code also demonstrates the concept of `variables as pointers and object passing`:
In Ruby, variables are references to objects and don’t contain objects themselves.

When an object is passed in as an argument to a method call, the method parameter acts as a pointer to the original object-until the parameter is assigned to a new object. 

line `229` initialises variable `name` to string `jim`
line `230` call method `change_name` and passes the string that variable `name` is referencing in as an argument.
lines `225-227` define the `change_name` which takes one parameter with the name `name`
variables `name` and parameter variable `name` point to the same object.
on line `226` parameter variable `name` is reassigned to string `bob`
now the variables `name` and `name` point to separate objects.
line `231` outputs `jim` and return `nil`

6 minutes

Example 6

line `68` initializes variable `arr` to the array `1..4`
line `70` initializes variable `counter` to integer `0`
line `71` initializes variable `sum` to integer `0`

lines `73-77` call the method `loop` and pass in the `do..end` block as an argument
line `74` reassigns variable `sum` to the return value of the method call `Integer#+` on the local variable `sum` with `arr[counter]` passed to it as an argument.

line `75` reassigns variable `counter` to the return value of the method call `Integer#+` on the local variable `counter` with the integer `1` passed to it as an argument.

line `76` uses the keyword `break` to exit the `loop` method if `counter` equals `arr.size`

Line 79 outputs `Your total is 10` to the screen and returns `nil`.

This code demonstrates the concept of `local variable scope`:
A local variable’s scope is determined by where it is inititalized.
Local variables that are initialized in an inner scope can't be accessed in the outer scope, but local variables that are initialized in the outer scope can be accessed in an inner scope.

7:30 minutes

Example 51

The code calls the `each_with_object` method on the elements of a hash and passes in the `do..end` block as an argument. The method returns a new hash which is populated by the keys and values of the original hash but where the keys take the place of values and values the place of keys. The elements of the new hash are `{"ant" => :a, "bear => :b, "cat" => :c}`

8:30 minutes

Example 44

The `each` method is called on the array `1..3` and the `do..end` block is passed to it as argument. The `puts` method is called on the elements of the array `1..3`, which outputs each integer in turn. The return value of the block is `nil`. 
The `each` method returns the caller and evalutes the given block for each element in the caller. 

5 minutes

Example 46

The code calls the `any?` method on a hash object and passes the `do..end` block to it as an argument. The `any` method returns true if any element satisfies a given criterion ; false otherwise. The criterion in this case is `value.size > 4` which is not fulfilled by any values of the hash. So the `any?` method returns `false`.

4 minutes

Example 32

on line `357` we initialize variable `names` to array `['bob', 'kim']`

on lines `353-355` we define the method `add_name` with parameter variables `arr` and `name`

on line `358` we call `add_name` method and pass in the array that variable `names` is referencing and the string `jim`.
on line `354` we assign the parameter variable to array `['bob', 'kim', 'jim']`
this assignment does not change the object to which variable `names` is pointing to. 

line `359` outputs the `bob` and `kim`. the return value of the `puts` method is `nil`.

Example 37
line `401` initializes variable `arr` to array `[1..10]`

line `403` initializes variable `new_array` to the return value of the `select` method on the array that the variable `arr` is referencing. The `do..end` block is passed into this method as argument. 

the `select` method outputs all elements of `arr` but it returns `nil`

as a result variable `new_array` points to an empty array. 

on line `407` the code uses the `p` method to output the empty array to which `new_array` is pointing. the return value of the `p` method is an empty array. 

The `select` method returns a new array based on the truthiness of the block's return value. In this case the block's return value evaluates to false and so no element of `arr` is selected on added to the new array. 

9 minutes

Example 30

Line `339` initializes variable `num` to integer `3`

Line `341` reassigns `num` to the return value of `2 * num`
In more detail: 
Line `341` reassigns `num` to the return value of `*` method called on the integer `2` with the integer that `num` references passed in as argument.

Variable `num` now points to integer `6`

4 minutes

Example 36

line `391` initialises variable `arr` to the array `[1..10]`

line `393` initialises the variable `new_array` to the return value of the `select` method on variable `arr`'s object with the `do..end` block passed in as argument. 

The `select` method returns a new array based on the truthiness of the block’s return value. If the return value evaluates to `true`, then the element is selected and added to the new array. Otherwise, the element is skipped and not added to the new array.

The block in this code evalutates to true so all elements of variable `arr` are selected.

Line `396` outputs and returns `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`

4 minutes

Example 17

Line `193` initializes the variable `test_str` to the string `Written Assessment`
Line `193` calls the `test` method and passes in the string that variable `test_str` references as argument.

Lines `186-190` define method `test` which takes one parameter called `str`
On line `187` variables `test_string` and `str` point to the same string object.
On line `188` variable `str` is reassigned. 
Now `str` and `test_string` point to separate objects. 
Line `195` outputs `Written Assessment` and returns `nil`

5 minutes

Example 16

Line `177` initializes variable `a` to the float object `5.2`
Line `178` initializes variable `b` to the float object `7.3`
Line `180` reassigns variable `a` to the object that `b` references. Both variables now point to the same object.

Line `182` reassigns variable `b`.
Now variables `a` and `b` point to separate objects.

Variable `a` points to float `7.3`
Variable `b` points to float `8.4`

3:30 minutes

Example 54
line `549` initializes variable `var` to the return value of method `test`
lines `545-547` define method `test` without a parameter
the return value of method `test` is `nil`

lines `551-555` define a control expression.
This control expression outputs `interview` and returns `nil`
because the variable `var` is the immediate value `nil`

7:30 minutes

Example 34

Line `375` initializes variable `array` to array `[1..5]`

Line `377` calls the `select` method on the array object that variable `array` points to and passes in the `do..end` block as argument. 

The `select` method returns a new array based on the truthiness of the block’s return value. If the return value evaluates to `true`, then the element is selected and added to the new array. Otherwise, the element is skipped and not added to the new array

The block in this code outputs all integer elements that are even, that is `1`, `3`, and `5`, and it returns `nil`.

As a result no element is selected, the return value of the `select` method is `[]`. 

4:30 minutes

Example 27

line `310` initializes variable `s` to string `hello`
line `311` initializes variable `t` to the return value of method `fix` with the string object to which variable `s` points passed in as argument

lines `305-308` define method `fix` which has one parameter called `value`
variables `value` and `s` point to the same string object.
on lines `306 and 307` the mutating methods `upcase!` and `concat` are called on the object to which variables `s` and `value` point.

variable `s` and `t` points to the same string object `HELLO!`

10 minutes
I got this one wrong at first and had to start over again. 

Example 38

line `412` initializes variable `words` to array `%w(jump trip laugh run talk)`

line `414` initializes variable `new_array` to the return value of the `map` method called on the array that variable `words` references with the `do..end` block passed in as argument.
The `map` method transforms each element in the calling array, returning a new array containing elements based on the return value of the block.
The return value of the `start_with?` method is called on each element and returns `true` if the element starts with the letter `t` and `false` otherwise.
Line `418` outputs and returns `[false, true, false, false, true]`

9 minutes.
I got this one wrong at first and had to start over again.

Example 50

the `each_with_object` method iterates over a collection, passing the current element and the memo to the block.
in this example the `each_with_object` method is called on hash and the return object is an array. 
The array is populated by the return value of the `last` method called on the current element. 
The return value is therefore `["ant", "bear", "cat"]`

9:30 minutes
I had to read documentation and run the code to get it right. 

Example 47

This code calls the `all?` method on the array `[1,2,3]` with the `do..end` block passed in as argument.
The return value of the block is `true` if all elements of the array are `>` than `2` and `false` otherwise.
In this case the return value of the `all?` method is `false`

3 minutes

Example 48

This code calls the `all?` method on the hash `{ a: "ant", b: "bear", c: "cat" }` with the `do..end` block passed in as argument. 
The return value of the block is `true` if the length all values of the hash is `>=` `3`, and `false` otherwise. 
In this case the return value of the `all?` method is `true`. 

4:30 minutes

Example 41

Line `440` initializes variable `arr` to the array `[1..10]`

Line `442` initializes variable `new_array` to the return value of the `map` method called on the array object to which variable `arr` points with the `do..end` block passed in as argument.

The `map` method transforms each element in the calling array, returning a new array containing elements based on the return value of the block.

In this case the return value of the block is `true` if the element is `>` than integer `1` and `false` otherwise. 

Line `445` calls the `p` method on the object that variable `new_array` is referencing and outputs and returns `[nil, true, true, true, true, true, true, true, true, true]`

6:30 minutes

Example 49

The `each_with_index` method is called on array `[1,2,3]` with `do..end` block passed in as argument. The block has two parameters `value` and `index`. 
The `each_with_index` method evaluates the given block for each element in the caller.
Line `504` calls the `puts` method on a  string interpolation that references the two block variables.
It outputs:
`The index of 1 is 0.`
`The index of 2 is 1.`
`The index of 3 is 2.`
The return value of the `each_with_index` method is the caller, that is, `[1,2,3]`

6:30 minutes

Example 19

Line `217` initializes variable `y` to string `a`.
Line `218` calls the `increment` method and pass in string that variable `y` is referencing as an argument.
Lines `213-215` define the `increment` method which has one parameter with the name `x`.
Variables `x` and `y` point to the same object.
Line 214 the `<<` method is used to mutate the object that variables `x` and `y` are referencing. 
Line `220` outputs `ab` and returns `nil`

6 minutes

Example 26

Line `299` initializes variable `s` to string `hello`
Line `300` initializes variable `t` to the return value of method `fix` with the string that variable `s` references passed in as argument.
Lines `293-297` define the `fix` method. It takes one parameter called `value`.
Variables `value` and `s` point to the same string.
Line `294` the `<<` method is used to mutate the object that variables `value` and `s` are referencing.
Line `295` variable `value` is reassigned and no longer references the object that variable `s` points to. 
Line `296` the `concat` method is used to mutate the object that variable `value` is referencing. 

Line `300` variable `t` points to string `HELLOXYZ!`
and variable `s` points to string `helloxyz`

9 minutes

I just noticed a mistake of mine. It's not correct that lines `293-297` change varible `s` at all since `s` is only passed into the method on line `300`. I will try again

Lines `293-297` define method `fix` which takes one parameter called `value`
Line `294` the `<<` method mutates the object that `variable` references.
Line `295` variable `value` is reassigned.
Line `296` the `concat` method mutates the object that `variable` references.

Line `299` variable `s` is initialzed to string `hello`
Line `300` variable `t` is initialized to the return value of the `fix` method which takes the object that variable `s` is referencing as argument. 
Variables `s` and `value` point to the same object until variable `value` is reassigned.

Line `300` variable `t` points to string `HELLOXYZ!`
and variable `s` points to string `helloxyz`

I'm still not very happy with this. Do you have any suggestions?

Example 53

line `534` variable `a` is initialized to string `Hello`

lines `536-540` calls method `if` on the string that variable `a` is referencing. `if` is Ruby’s basic conditional statement constructor. `if` evaluates its argument and branches on the result.

in this case `if` returns `Hello is truthy` if variable `a`'s object is `truthy` and `Hello is falsey` otherwise.

the object that variable `a` points to is `truthy` since it is neither `false` nor `nil`. 

the `if` statement therefore outputs `Hello is truthy`

5:30 minutes

Example 42

line `450` variable `arr` is initialized to array `[1..10]`

line `452` variable `new_array` is initialized to the return value of `map` method called on the array that variable `arr` points to with `do..end` block passed in as argument.

The `map` method transforms each element in the calling array, returning a new array containing elements based on the return value of the block.

The last line of the block outputs every integer of the array `arr` and returns `nil`

line `456` the `p` method is called on the array that `new_array` is referencing. It outputs and returns `[nil...nil]`

5 minutes

Example 28

line `321` initializes variable `s` to string `abc`
line `322` initializes variable `t` to the return value of `fix` method which takes the string that `s` is referencing as argument. 

the `fix` method was defined on lines `316-319`. it has one parameter called `value` which now points to the same object as variable `s`.

line `317` reassigns the second element of the object that variable `value` references to `x`. This reassignment mutates the object. 
line `318` returns variable `value`

both variables `s` and `t` point to string `axc`

6 minutes

Example 15

Line `171` initializes variable `a` to the array `['a', 'b', 'c']`
Line `172` calls the `test` method with the object that variable `a` points to passed in as argument. 
The `test` method was defined on lines `167-169`. It takes one parameter called `b`.
Line `168` calls the `map` method on the object that variable `b` points to and passes the `{..}` block in as an argument. 
The `map` method transforms each element in the calling array, returning a new array containing elements based on the return value of the block.
The block parameter is `letter` and the block's return value for each element is a string interpolation that references the block parameter.
Line `172` returns the array 
`['I like the letter: a', 'I like the letter: b', 'I like the letter: c']`

8 minutes

Example 40

line `430` initializes variable `arr` to the array `[1..10]`

line `432` initializes varible `incremented` to the return value of the `map` method called on the object that `arr` is pointing to, with the `do..end` block passed in as argument.

The `map` method transforms each element in the calling array, returning a new array containing elements based on the return value of the block.

The block parameter is `n` and the block returns `n+1`

line `435` outputs and returns `[2..11]`

4 minutes

Example 12

line `146` initializes variable `a` to string `hi there`
line `147` initializes variable `b` to the string that `a` points to.
line `148` reassigns variable `a` to string `not here`.
variables `a` and `b` now point to separate string objects.

2 minutes

Example 52

Line `524` initializes the variables `odd` and `even` to the return value of the `partition` method called on array `[1,2,3]`, with the `do..end` block passed in as argument. 
In this case, the `partition` method assigns all `odd` elements to variable `odd` and all others to variable `even`.

Line `528` returns and outputs `[1,3]`
Line `529` returns and outputs `[2]`

4:30 minutes

Example 18
line `204` initializes variable `a` to integer `3`
line `205` initializes variable `b` to the return value of method `plus` with the integer that `a` points to as first argument and `2` as second argument. 

method `plus` was defined on lines `200-202`
it takes variables `x` and `y` as parameters. 
on line `201` the object of variable `x` is reassigned to
`x+y`
initially, on line `205` variables `a` and `x` point to the same object, but after `x`'s reassignment they point to separate objects. 

line `207` outputs `3` and returns `nil`
line `208` outputs `5` and returns `nil`

6 minutes

Example 13
Line `153` initializes variable `a` to string `hi there`
Line `154` initializes variable `b` to the string that variable `a` points to.
Line `155` calls the mutating `<<` method on the string that `a` points to, with `, Bob` passed in as argument.
Variables `a` and `b` now both point to string `hi there, Bob`

2:30 minutes

Example 22
Line `247` initializes variable `a` to the array `[1, 3]`
Line `248` initializes variable `b` to the array `[2]`
Line `249` initializes variable `arr` to the array `[a, b]`
Line `252` reassigns the second element of variable `a` to integer `5`. This reassignment is destructive. 
Variable `arr` now points to array `[[1,5], [2]]`

4 minutes

Example 29

Line `331` initializes variable `a` to string `hello`
Line `332` calls method `a_method` with the object that variable `a` points to passed in as argument.
The `a_method` method was defined on lines `327-329`. It takes one parameter called `string`
Line `328` calls the mutating method `<<` on the object that `variable` points to, and passes in the string ` world` as an argument.
Line `334` outputs and returns `hello world`
6 minutes

Example 33

Line `368` initializes variable `names` to the array `['bob', 'kim']`
Line `369` calls method `add_names` with two parameters.
The first parameter is the array to which variable `names` points, the second is the string `kim`
The `add_names` method is defined on lines `364-366`
It takes variables `arr` and `name` as parameters. 
The method reassigns variable `arr` to `arr << name`
The `<<` method mutates the object on which it is called. 

Line `370` outputs `bob`, `kim`, and `jim` and returns `nil`

6 minutes

Example 39

Line `423` initializes variable `arr` to array `[1..10]`
Line `425` calls the `each` method on the array that variable `arr` is referencing. The `{..}` block is passed in as argument. 
The `each` method returns the caller. In this case it returns, `[1..10]`
The `each` method evaluates the given block for each element in the caller.
The block parameter is `n` and the `puts` method is called on each element. This outputs `1...10`

5 minutes

Example 45
Line `475` calls the `any?` method on the array `[1,2,3]`. The `do..end` block is passed in as argument.
The block parameter is `num`.
The block's body calls the `>` method on the element that `num` is pointing to. Integer `2` is passed in as argument.
The `any?` method returns `true` if any of the elements is higher than `2`. 
In this case it returns `true`.

5 minutes

Example 53

Line `534` initializes variable `a` to string `Hello`
Lines `536-540` calls the `if..else` statement on the string that `a` is referencing.
If the condition evaluates as `truthy` line `537` will be evaluated and returned.
Else line `539` will be evaluated and returned.
Variable `a` points to an object other than `false` or `nil` and is therefore `truthy`. 
Line `537` outputs `Hello is truthy` and returns `nil`.

6 minutes

Example 21

line `240` initializes variable `name` to string `jim`
line `241` calls the `cap` method and passes in the string object that `name` is referencing as argument.
lines `236-238` define the `cap` method. It takes one parameter called `str`.
line `237` calls the destructive method `capitalize!` on the object that `str` points to. 
line `242` outputs `Jim` and returns `nil` 

4 minutes

Example 14
Line `160` initializes variable `a` to array `[1,2,3,3]`
Line `161` initializes variable `b` to the same array that variable `a` is pointing.
Line `162` initializes variable `c` to the return value of the `uniq` method called on the array that variable `a` is referencing. 
Variable `c` points to array `[1,2,3]`

2:30 minutes

Example 23

Line `258` initializes variable `arr1` to array `['a', 'b','c']`
Line `259` initializes variable `arr2` to the return value of `dup` method called on the array that variable `arr1` references. 
On lines `260-262` the `map!` method is called on the array that `arr2` is referencing. The `do..end` block is passed in as argument. 
The `map!` method calls the block, if given, with each element; replaces the element with the block's return value. 
The block returns the `upcase` method called on each element. 
Line `264` outputs `a`, `b`, `c` and returns `nil`
Line `265` outputs `A`, `B`, `C` and returns `nil`

7 minutes

Example 31
Line `346` initializes variable `a` to array `%w(a b c)`
Line `347` reassigns the second element of variable `a` to string `-`
Line `348` outputs and returns the array `%w(a - c)`

2:30 minutes

Example 43
Line `461` initializes variable `a` to string `hello`
Line `463` calls the `map` method on the array `[1,2,3]` and passes the `{..}` block in as argument.
The `map` method transforms each element in the calling array, returning a new array containing elements based on the return value of the block.
The return value of the block is the string that variable `a` is referencing. 
The new array contains therefore `['hello','hello','hello']

3:30 minutes

Example 53
line `534` initializes variable `a` to string `Hello`

lines `536-540` consists of an `if..else` conditional that will check for the truthiness of the expression following `if`. If that condition evaluates as truthy line `537` will be evaluated and returned. In the case that the expression following `if` evaluates as falsy line `539` will be evaluated and returned.

Since the string that variable `a` is referencing is neither `false` nor `nil` it evaluates as `true`.
The control expression outputs `Hello is truthy`

3 minutes

Example 25

Line `287` initializes variable `s` to string `hello`
Line `288` initializes variabel `t` to the return value of method `fix` with the object that variable `s` is referencing passed in as argument.
Line `282` defines method `fix`. It has one parameter variable called `value`
When the object that `s` is referencing is passed into the `fix` method as variable `s` and `value` point to the same object.
Line `283` reassign the variable `value` so `value` and `s` point to separate objects.
Line `284` calls the destructive `concat` method on the string that `value` is referencing, with `!` as argument.
On line `288` variable `t` is pointing to `HELLO!` and variable `s` to `hello`

7 minutes

Example 55
Lines `560-566` define method `repeater`. It takes one parameter called `string`
Line `561` initializes variable `result` to an empty string.
Lines `562-564` calls the `each_char` method on the string that variable `string` is referencing. The `do..end` block is passed in as argument. 
The block parameter is called `char`
The `each` method returns the caller and does not consider the return value of the block. The `each` method evaluates the given block for each element in the caller.
Within the block the `<<` method is called twice on the string that variable `result` is referencing. The element that `char` is referencing is passed in as argument.
Line `568` calls the repeater method and string `hello` is passed in as argument.
It returns `HHeelllloo`

6 minutes

Example 56
Line `573` initializes variable `x` to string `hi there`
Line `574` initializes variable `my_hash` to hash `{x: "some value"}`
The key `:x` in `my_hash` is a symbol. It does not point to string `hi there`.
Line `575` initializes variable `my_hash2` to hash `{x => "some value"}`
The key `x` in `my_hash` is a variable that points to string `hi there`.
Variable `my_hash` points to hash `{x: "some value"}`
Variables `my_hash2` points to hash `{"hi there" => "some value"}`

5:30 minutes

Example 57
Line `580` initializes variable `total` to integer `0`
Lines `581-583` call the `each` method on array `[1,2,3]`. The `do..end` block is passed in as argument. The block parameter is called `number`.
The `each` method returns the caller and does not consider the return value of the block. The `each` method evaluates the given block for each element in the caller.
Line `582` reassigns the local variable `total` to the return value of the method call `Integer#+` on the local variable `total` with the integer that variable `number` references passed to it as an argument.
Line `584` calls the `puts` method on the integer that `total` is referencing. It outputs `6` and returns `nil`.

4 minutes

Example 58
Line `593` initializes variable `a` to array `['a', 'b', 'c']`
Lines `589-591` define method `test`. It takes one parameter called `b`
Line `590` calls the `map` method on the object that `b` is referencing. The `{..}` block is passed in as argument. The block parameter is `letter`.
The `map` method transforms each element in the calling array, returning a new array containing elements based on the return value of the block.
Line `590` returns on a string interpolation that references the block variable.
Line `594` calls method `test` and passes in the array that variable `a` is referencing.
Line `594` returns the new array `["I like the letter: a","I like the letter: b", "I like the letter: c"]`

6:30 minutes

Example 59
Lines `599-601` define the `include?` method. It takes two parameters called `arr` and `search_item`.
Line `600` calls the `each` method on the objects that `!arr` is referencing. The `{..}` block is passed in as argument. The block parameter is `item`.
The `each` method returns the caller and does not consider the return value of the block. The `each` method evaluates the given block for each element in the caller.
Line `600` returns `false` since `!arr` holds the immediate value `false`.

9 minutes

Example 60
Line `612` initializes variable `arr1` to array `['hello]`
and variable `arr2` to array `['hello', 'world']`
Line `613` initializes variable `merged` to the return value of method `merge` with the arrays to which variables `arr1` and `arr2` point passed in as argument. 
Lines `608-610` define method `merge`. It has two parameters called `array_1` and `array_2`.
Line `609` calls the `|` method on the array that `array_1` is referencing and passes in the array that `array_2` is referencing.
The return value is array `['hello', 'world']`
Line `614` destructively reassigns the first element of the first element that variable `merge` is referencing.
Line `616` returns `['Jello', 'world']`
Line `616` returns `['Jello']`
Line `617` returns `['hello', 'world']`

9 minutes

Example 61
Lines `622-628` define method `short_long_short`. The method takes two parameters called `string1` and `string2`. 
Lines `623-624` contain an `if..else` conditional. 
The `if..else` conditional checks for the truthiness of the expression following `if`.
In this case the expression is `string1.length > string2.length`
If that condition evaluates as truthy line `624` will be evaluated and returned. Otherwise, line `626` will be evaluated and returned.
Line `630` calls the `short_long_short` method and passes in the strings `abc` and `defgh` as arguments.
The return value of this method call is `abcdefghabc`.

7 minutes

Example 62
This code calls the `each` method on array `[1,2,3]`. The `do..end` block is passed in as argument.
The `each` method returns the caller and does not consider the return value of the block. The `each` method evaluates the given block for each element in the caller.  
Line `636` calls the `put` method on the object that block parameter `num` is referencing.
This code outputs `1`, `2`, `3` and returns the caller array `[1,2,3]`.

3:30 minutes

Example 63
Line `642` initializes variable `a` to integer `1`
On lines `644-648` we call the method `loop` and pass in the `do..end` block as an argument.
On line `645` the puts method is called on the object that variable `a` is referencing.
On line `646` variable `a` is reassigned to `a + 1`
On line `647` we break out of the loop by using the keyword `break`.
Line `650` outputs `1` and returns `nil`

Example 1
Line `2` initializes variable `a` to string `Hello`
Line `3` initializes variable `b` to the same string that variable `a` references.
Line `4` reassigns variable `a` to string `Goodbye`
Variables `a` and `b` no longer point to the same object.
Line `5` outputs `Goodbye` and returns `nil`.
Line `6` outputs `Hello` and returns `nil`.

2 minutes

Example 5
Line `61` initializes variable `word` to string `Hello`
Lines `56-59` define method `greeting`. It takes one parameter called `str`.
Line `57` calls `puts` method on the object that `str` is referencing.
Line `58` calls `puts` method on string `Goodbye`
Line `63` calls `greetings` method and passes in the string that variable `word` is referencing as argument. 
This outputs `Hello` and `Goodbye` and returns `nil`.

4 minutes

Example 37
Line `401` initializes variable `arr` to array `[1..10]`
Line `403` initializes variable `new_array` to the return value of `select` method called on the object that `arr` is referencing. The `do..end` block is passed in as argument. The block parameter is `n`.
The `select` method returns a new array based on the truthiness of the block’s return value. If the return value evaluates to `true`, then the element is selected and added to the new array. Otherwise, the element is skipped and not added to the new array. If no element is selected, the return value is `[]`.
The last line of the block contains the `puts` method which outputs to the screen and returns `nil`.
In this case the return value of the block is `nil`
Line `407` outputs `1..10` and returns `[]`

4:30 minutes

Example 48
This code calls the `all?` method on the hash `{ a: "ant", b: "bear", c: "cat" }`. The `do..end` block is passed in as argument. The block parameters are `key` and `value`.
The block compares the length of the string that `value` is referencing to `>= 3`. It returns `true` if all values fulfill this comparison, and `false` otherwise.
In this case the method returns `true`.

Example 24
Line `276` initializes variable `s` to string `hello`
Line `277` initializes variable `t` to the return value of the method `fix` with the string that `s` is referencing passed in as argument.
Lines `270-274` define method `fix`. It takes one parameter called `value`.
Line `271-272` call the destructive method `upcase!` and `concat` on the object that `value` is referencing.
The destructive methods mutate the string to which variables `value` and `s` are pointing.
At the end, `s` and `t` and point to `HELLO!`

5:30 minutes

Example 50

This code call the `each_with_object` method on the hash `{ a: "ant", b: "bear", c: "cat" }`. The `do..end` block is passed in as argument. 
The `each_with_object` method calls the block once for each element, passing both the current element and the memo object.
In this case, the current element is referenced by variable `pair` and the memo object by variable `array`.
Line `511` calls the `<<` method on the object that `array` is referencing and passes in the object that `pair.last` is referencing. 
This code returns a new array containing the strings `ant`, `bear`, and `cat`. 

6 minutes

Example 26
Line `299` initializes variable `s` to string `hello`
Line `300` initializes variable `t` to the return value of method `fix` with the object that `s` is referencing passed in as argument.
Lines `293` define the method `fix`. It takes one parameter called `value`.
Line `294` calls the destructive `<<` method on the object that `value` is referencing.
Line `295` reassigns variable `value`.
Variables `value` and `s` no longer point to the same object.
Line `296` calls the destructive method `concat` on the object that `value` is referencing.
At the end, variable `s` points to string `helloxyz` and variable `t` to string `HELLOXYZ!`

5:30 minutes

Example 32
Line `357` initializes variable `names` to array `['bob', 'kim']`
Lines `353-355` define method `add_name`. It takes two parameters called `arr` and `names`.
Line `354` reassigns variabel `arr` to `arr + [name]`
Line `358` calls the `add_name` method and passes in the object that variables `names` is referencing and string `jim`.
Line `358` returns `['bob', 'kim', 'jim]`
Line `359` outputs `bob` and `kim` and returns `nil`

6 minutes

Example 10

Line `123` initializes variable `n` to integer `10`

Lines `125-127` call the `times` method on integer `1`. The `do..end` block is passed in as argument. The block parameter is `n`. 
The block parameter has the same name as variable `n`. This causes variabel shadowing. 
On line `126` Variable `n` is not reassigned but initialized.
Line `129` outputs `10` and returns `nil`.

4:15 minutes

Example 51

This code calls the `each_with_object` method on hash `{ a: "ant", b: "bear", c: "cat" }`. It passes in `do..end` block as argument. The block's parameters are `key`, `value`, for the current elements and `hash` for the memo object. 
The `each_with_object` method calls the block once for each element, passing both the current element and the memo object.
In this case, the method returns a new hash that is contains the original key and value but in reversed order.
It returns `{"ant" => :a, "bear" => :b, "cat" => :c}`

6:30 minutes

Example 35
Line `384` initializes variable `arr` to array `[1..10]`
Line `386` calls the `select` method on the array that `arr` is referencing. The `{..}` is passed in as argument. 
The `select` method returns a new array based on the truthiness of the block’s return value. If the return value evaluates to `true`, then the element is selected and added to the new array. Otherwise, the element is skipped and not added to the new array. If no element is selected, the return value is `[]`.
The block parameter is `n` and the block calls the `odd?` method on the elements of `n`.
The new array consists of all odd integer elements of the original array: 
`[1,3,5,7,9]`

4:30 minutes

Example 27
Line `310` initializes variable `s` to string `hello`
Line `311` initializes variable `t` to the return value of method `fix` with the object that `s` is referencing passed in as argument.
Lines `305-308` define method `fix`. It takes one parameter called `value`.
Lines `306-7` call destructive methods on the object that variable `value` is referencing.
This mutates the object that variable `s` is referencing. 
At the end, variables `s` and `t` point to the same object `HELLO!`

4 minutes

Example 38
Line `412` initializes variable `words` to array `%w(jump trip laugh run talk)`

Line `414-416` initializes variable `new_array` to the return value of the `map` method called on the object that `words` is referencing. The `do..end` block is passed in as argument.
The `map` method transforms each element in the calling array, returning a new array containing elements based on the return value of the block.
The block parameter is `word`.
Line `415` calls the `start_with?` method on the elements that `word` is referencing. 
Line `418` outputs and returns the new array `[false, true, false, false, true]`

5 minutes

Example 60
Line `608-10` defines the `merge` method. It takes two parameter called `array_1` and `array_2`
The method calls the `|` method on the object that `array_1` references and passes in the object that `array_2` references.
Line `612` initializes variables `arr1` to array `['hello']`
and `arr2` to array `['hello', 'world']`
Line `613` initializes variable `merged` to the return value of the `merge` method with the objects that variables `var1` and `var2` are referencing passed in as arguments.
Line `613` destructively reassigns the first element of the first element of `merged.
Line `615` outputs and returns `['Jello', 'world']`
Line `616` outputs and returns `['Jello']`
Line `617` outputs and returns `['hello', 'world']`

10 minutes

Example 4 
Lines `42-49` define method `example`. It takes one parameter called `str`.
Line `43` initializes variable `i` to integer `3`
Lines `44-48` call a `loop` method. The `do..end` elements are passed in as argument.
Line `45` outputs the integer that `str` is referencing.
Line `46` reassigns variable `i` to the return value of the method call `Integer#-` on the variable `i` with the integer `1` passed to it as an argument.
Line `47` breaks out of the loop by using the keyword `break` if the value of the object that the local variable `i` is referencing is equal to `0`. 
Line `51` calls the `example` method and passes in string `hello` as argument. 
This outputs `hello`, `hello`, `hello`, and returns `nil`

5:30 minutes

Example 15
Line `171` initializes variable `a` to array `['a', 'b', 'c']`
Line `172` calls `test` method and passes in the array that `a` is referencing as argument.
Lines `167-169` define `test` method. It takes one parameter called `b`.
Line `168` calls the `map` method on the object that `b` is referencing. The `do..end` block is passed in as argument.
The `map` method transforms each element in the calling array, returning a new array containing elements based on the return value of the block.
The block parameter is `letter`. The block outputs a string interpolation that references the block variable `letter`.
Line `172` returns the array `["I like the letter: a". "I like the letter: b", "I like the letter: c"]`

5 minutes

Example 63
Line `642` initializes variable `a` to integer `1`.

Lines `644-648` call `loop` method. The `do..end` block is passed in as argument.
Line `645` outputs the object that `a` is referencing.
Line `646` reassigns `a` to to the return value of the method call `Integer#+` on the variable `a` with the integer `1` passed to it as an argument.
Line `647` exits the loop with keyword `break`.

Line `650` outputs `2` and returns `nil`.

5 minutes

Example 59
Lines `599-601` define `include?` method. It takes two parameters that are called `arr` and `search_item`.
Line `600` calls the `each` method on `!arr`.
The `each` method returns the caller and does not consider the return value of the block. The `each` method evaluates the given block for each element in the caller.
In this case, the caller is the immediate value `false`.
Line `603` calls the `include?` method and passes in two arguments. It returns `false`.

4 minutes

Example 61
Lines `622-628` define the `short_long_short` method. It takes two parameters called `string1` and `string2`.
Lines `623-627` consist of an `if..else` conditional.
The `if..else` conditional checks for the truthiness of the expression following `if`. If that condition evaluates as truthy line `624` will be evaluated and returned. Otherwise, line `626` will be evaluated and returned.
The expression that follows `if` is a comparison. It checks whether the operand that is referenced by `string1.length` is `greater than` the operand that is referenced by `string2.length`.
Line `630` calls the `short_long_short` method and passes in the strings `abc` and `defgh` as arguments. 
In this case the check returns false and line `624` is evaluated and returned.
It returns `abcdefghabc`

5:30 minutes

Example 35
Line `384` initializes variable `arr` to arra` `[1..10]`
Line `386` calls the `select` method on the array that `arr` is referencing.
The `select` method returns a new array based on the truthiness of the block’s return value. If the return value evaluates to `true`, then the element is selected and added to the new array. Otherwise, the element is skipped and not added to the new array. If no element is selected, the return value is `[]`.
The block parameter is `n` and the block selects all elements that are odd.
The return value is the array `[1,3,5,7,9]`

Example 25
Line `287` initializes variable `s` to string `hello`
Line `288` initializes variable `t` to the return value of the `fix` method with the object that `s` is referencing passed in as argument.
Lines `282` define the `fix` method. It takes one parameter called `value`.
Line `283` reassigns variable `value`.
Variables `value` and `s` no longer point to the same object.
Line `284` calls the destructive method `concat` on the object that `value` is referencing.
At the end, variable `s` points to `hello` and variable `t` to `HELLO!`

Example 21
Line `240` initializes variable `name` to string `jim`
Lines `236-8` define method `cap`. It takes one parameter called `str`.
Line `237` calls the destructive method `capitalize!` on the object that `str` is referencing.
Line `241` calls `cap` method and passes in the string that `name` is referencing as argument.
Line `242` outputs `Jim`

Example 10
Line `123` initializes variable `n` to integer `10`
Lines `125-127` call the `times` method on integer `1`. The `do..end` block is passed in as argument. 
The block parameter is called `n`.
The block parameter has the same name as variable `n`. This causes variabel shadowing. Variable Shadowing prevents access to variables of the same name that are initialized outside of the block.
Line `126` therefore initializes variable `n` to integer `11`.
Line `129` outputs `10` and returns `nil`. 

Example 41
Line `440` initializes variable `arr` to array `[1..10]`
Lines `442-5` initialize variable `new_array` to the return value of method `map` called on the object that `arr` is referencing. The `do..end` block is passed in as argument.
The `map` method transforms each element in the calling array, returning a new array containing elements based on the return value of the block.
The block parameter is `n`
Line `443` compares the operator `>` to the operand that `n` is referencing and operand `1`.
Line `441` returns and outputs `[false, true.. true]`

Example 27

Line `310` initializes variable `s` to string `hello`
Line `311` initializes variable `t` to the return value of the `fix` method with the object that `s` is referencing passed in as argument.
Lines `305` define `fix` method. It takes one parameter called `value`
Lines `306-7` call destructive methods on the object that `value` is referencing.
Variable `s` points to the same objects. 
At the end, variables `s` and `t` point to string `HELLO!`

Example 47
This code calls the `all?` method on array `[1,2,3]`. The `do..end` block is passed in as argument. It takes one block parameter called `num`.
Line `490` compares the `>` operator to object that operand `num` is referencing and operand `2`.
This code returns `false`

Example 63
Line `642` initializes variable `a` to integer `1`
Lines `644` calls the `loop` method and passes in the `do..end` block as argument.
Line `645` calls the `puts` method on the object that `a` is referencing.
Line `646` reassigns variable `a` to `a + 1`
This assignment is possible because `a` was initialized in the outer scope and so can be accessed by the inner scope. 
Line `650` outputs `2` and returns `nil`

Example 18
Lines `200-202` define the `plus` method. It takes two parameters called `x` and `y`
Line `201` reassigns `x` to the return value of the `+` method called on the object that `x` is referencing with the object that `y` is referencing passed in as argument.

Line `204` initializes variable `a` to integer `3`
Line `205` initializes variable `b` to the return value of the `plus` method with the object that `a` is referencing and integer `2` passed in as arguments. 
Line `207` outputs `3` and returns `nil`
Line `208` outputs `5` and returns `nil`

Example 7
Line `84` initializes variable `a` to string `Bob`

Lines `86-8` calls the `times` method on integer `5` with the `do..end` block passed in as argument. 
Line `87` reassigns `a` to string `Bill`.
This is possible because `a` was initialized in the outer scope, which can be accessed by the inner scope.

Line `90` outputs and returns `Bill`

Example 60

Lines `608-610` define the `merge` method. It takes two parameters called `array_1` and `array_2`
Line `609` calls the `|` method on the objects that `array_1` and `array_2` are referencing. 

Line `612` initializes variable `arr1` to array `['hello']` and `arr2` to array `['hello', 'world']`
Line `613` initializes variable `merged` to the return value of method `merge` with the objects that `arr1` and `arr2` are referencing passed in as arguments.
Variable `merged` points to array `['hello', 'world']`. The first element is also referenced by `arr1` and the second element also by `arr2`.
Line `614` mutates the first element of the first element to string `j`. 
Line `615` calls `p` method on the object that `merged` is referencing and outputs and returns `['Jello', 'world']`
Line `616` calls `p` method on the object that `arr1` is referencing and outputs and returns `['Jello']`
Line `615` calls `p` method on the object that `arr2` is referencing and outputs and returns `['hello', 'world']`

This code demonstrates the workings of the `|` method. 

Example 9
Line `109` initializes variable `a` to integer `4`
Line `110` initializes variable `b` to integer `2`

Lines `112-115` call the `times` method on integer `2` and pass in the `do..end` block as argument. The block parameter is `a`.

Variable shadowing happens when the name of a block parameter is the same as the name of a local variable that was initialized outside the block.
Variable Shadowing prevents access to variables of the same name that are initialized outside of the block.

Line `113` initializes variable `a` to integer `5` within the inner block. 
Line `114` outputs the object that inner variable `a` points to.

Line `117` outputs `4` and returns `nil`
Line `118` outputs `2` and returns `nil`

Example 50
This code calls the `each_with_object` method on hash `{ a: "ant", b: "bear", c: "cat" }`
The `do..end` block gets passed in as argument. 
The `each_with_object` method calls the block once for each element, passing both the current element and the memo object.
The variable `pair` references the current elements and the variable `array` the memo object.
Line `511` calls the `<<` method on the object that `array` is referencing and passes in the last element of `pair` as an argument. 
This returns a new array that contains the strings `ant`, `bear`, and `cat`.

Example 62
This code calls the `each` method on the array `[1,2,3]` and passes in the `do..end` block as an argument. 
The parameter is `num` and the block calls the `puts` method on the object that `num` is referencing.
This demonstrates the `each` method:
The `each` method returns the caller and does not consider the return value of the block. The `each` method evaluates the given block for each element in the caller.
The code outputs `1`, `2`, and `3` and returns `[1,2,3]`

Example 29
Line `331` initializes variable `a` to string `hello`
Line `332` calls the `a_method` and passes in the string that `a` is referencing as argument. 
Lines `327-329` define `a_method`. It takes one parameter called `string`
Line `328` calls the destructive `<<` method on the object that `string` is referencing and passes in the string ` world` as argument.
Line `334` returns and outputs `hello world`.
This demonstrates the concept of `mutating methods`. Mutating methods change the value of the calling object’s space in memory.

Example 17
Line `192` initializes variable `test_str` to string `Written Assessment`
Line `193` calls method `test` and passes in the object that `test_str` is referencing as argument. 
Lines `187-190` define method `test`. It takes one parameter called `str`.
Line `188` reassigns variable `str`.

This demonstrates the concept of object passing:
When an object is passed in as an argument to a method call, the method parameter acts as a pointer to the original object-until the parameter is assigned to a new object.
Variable `test_str` points to a different object than variable `str`.

Line `195` calls `puts` method on the object that `test_str` is referencing. This outputs `Written Assessment` and returns `nil`.

Example 48
This code calls the `all?` method on the hash `{ a: "ant", b: "bear", c: "cat" }`. The `do..end` block is passed in as argument.
The block parameters are `key` and `value`.
The block compares the operands `value.lengths` and `3`. 
Since all `values` are greater or equal to `3` the `all?` method returns `true`
This code demonstrates the `all?` method.

Example 45
This code calls the `any` method on array `[1,2,3]` The `do..end` block is passed in as argument. The block parameter is `num`.
The block compares the operands `num` and `2`. 
The code returns `true` if any element that `num` is referencing is greater than `2` and `false` otherwise.
This code returns `true`. It demonstrates the `any` method.

Example 54
Lines `545-547` define the method `test`. It takes no parameter.
Line `546` calls the `puts` method and passes in `written assessment` as argument.

Line `549` initializes variable `var` to the return value of method `test`.

Lines `551-555` contain an `if..else` statement. The `if..else` conditional checks for the truthiness of the expression following `if`. If that condition evaluates as truthy line `552` will be evaluated and returned. Otherwise, line `554` will be evaluated and returned.

The return value of calling method `test` is `nil`. So variable `var` holds `nil`.
This outputs `interview` on line `554`.

This code demonstrates the concept of `truthiness`: In Ruby, every value apart from `false` and `nil` is `truthy` and `false` and `nil` are `falsey`.

Example 46
This code calls the `any` method on the hash `{ a: "ant", b: "bear", c: "cat" }`. The `do..end` block is passed in as argument. The block parameters are `key` and `value`.
The block compares operands `value.size` and `4`.
The block returns `true` if any `value` element is greater than `4` and `false` otherwise.
In this case the code returns `false`.
This demonstrates the `any` method.

Example 37

Line `401` initializes variable `arr` to array `[1..10]`
Line `403` initializes variable `new_array` to the return value of the `select` method called on the object that `arr` is referencing with the `do..end` block passed in as argument.
This demonstrates the `select` method:
The `select` method returns a new array based on the truthiness of the block’s return value. If the return value evaluates to `true`, then the element is selected and added to the new array. Otherwise, the element is skipped and not added to the new array. If no element is selected, the return value is `[]`.

The last line of the block calls the `puts` method on the elements that `n` is referencing. This outputs `1`..`10` and returns `nil`.

The select method therefore returns `[]`.
This is outputed and returned on line `407`.

Example 23
Line `258` initializes variable `arr1` to array `['a', 'b', 'c']`
Line `259` initializes variable `arr2` to the return value of the `dup` method called on the object that `arr1` references.
Lines `260-262` call the `map!` method on the object that `arr2` is referencing. The `do..end` block is passed in as argument. The block parameter is `char` and the block calls the `upcase` method on the object that `char` is referencing.

Line `264` calls the `puts` method on the object that `arr1` is referencing. This outputs `a`, `b`, `c` and returns `nil`.
Line `265` calls the `puts` method on the object that `arr2` is referencing. This outputs `A`, `B`, `C` and returns `nil`.

This demonstrates the `dup` method. In Ruby, variables are references to objects and don’t contain objects themselves.
The invocation of the `dup` method on line `259` means that `arr1` and `arr2` point at separate objects.

Example 40
Line `430` initializes variable `arr` to array `[1..10]`
Lines `432-434` initialize variable `incremented` to the return value of `map` method called on the object that `arr` is referencing. The `do..end` block is passed in as argument. 
The block parameter is `n` and the block returns `n + 1`
This code demonstrates the `map` method:
The `map` method transforms each element in the calling array, returning a new array containing elements based on the return value of the block.
Line `435` calls the `p` method on the object that `incremented` is referencing. It outputs and returns the array `[2..11]`

Example 14

Line `160` initializes variable `a` to array `[1,2,3,3]`
Line `161` initializes variable `b` to same array.
Line `162` initializes variable `c` to the return value of invoking the `uniq` method on the object that `a` is referencing.
Variable `c` points to array `[1,2,3]`
This code demonstrates the `uniq` method. 

Example 19
Line `217` initializes variable `y` to string `a`.
Lines `213-215` define method `increment`. The parameter is `x`.
Line `214` calls the destructive `<<` method on the object that `x` is referencing and passes in the string `b` as an argument.
Line `218` calls the increment method and passes in the object that `y` is referencing as an argument.
Line `220` calls `puts` method on the object that `y` is referencing. This outputs `ab` and returns `nil`.
This demonstrates the concept of `mutating methods`:
Mutating methods change the value of the calling object’s space in memory.

Example 22
Line `247` initializes variable `a` to array `[1,3]`
Line `248` initializes variable `b` to array `[2]`
Line `249` initializes variable `arr` to `[a,b]`
Line `252` assigns a new element in variable `a` which returns the given `object`.
Line `253` variable `arr` points to `[[1,5], [2]`
This code demonstrates element assignment to a specifc index of an array object. 

Example 30
Line `339` initializes variable `num` to integer `3`.
Line `339` assigns `num` to the return value of the `*` method called on integer `2` with the object that `num` is referencing passed in as argument. 
`num` now points to `6`.
This demonstrates `variables as pointers and object passing`. In Ruby, variables are references to objects and don’t contain objects themselves.
When an object is passed in as an argument to a method call, the method parameter acts as a pointer to the original object. 

Example 1
Line `2` initializes variable `a` to string `Hello`
Line `3` initializes variable `b` to the string that `a` is referencing.
Line `4` reassigns `a` to the string `Goodbye`
Line `5` calls the `puts` method and passes in the object that `a` is referencing as value. 
Line `646` reassigns `a` to the return value of the method call `Integer#+` on the variable `a` with the integer `1` passed to it as an argument.
Line `650` calls the `puts` method and passes in the object that `a` is referencing. It outputs `2` and returns `nil`. 
This code demonstrates the concept of `local variable scope`. A local variable’s scope is determined by where it is inititalized.
Local variables that are initialized in an inner scope can't be accessed in the outer scope, but local variables that are initialized in the outer scope can be accessed in an inner scope.

Example 58
Line `593` initializes variable `a` to array `['a', 'b', 'c']`
Lines `589-591` defines method `test`. It takes one parameter called `b`.
Line `590` calls the `map` method on the object that `b` is referencing. The `{..}` block is passed in as argument. 
The `map` method transforms each element in the calling array, returning a new array containing elements based on the return value of the block.
The block parameter is `letter`. The block returns a string interpolation that references the variable `letter`.
Line `594` calls the `test` method and passes in the object that `a` is referencing as a argument. 
It returns `["I like the letter: a, "I like the letter: b, "I like the letter: c]`

Example 11
Line `134` initializes variable `animal` to string `dog`.
Lines `136-139` call the `loop` method and pass in `do..end` block as argument.
The block parameter is called `animal`, the same as the variable `animal`. 
This demonstrates `variable shadowing`:
Variable shadowing happens when the name of a block parameter is the same as the name of a local variable that was initialized outside the block.
Variable Shadowing prevents access to variables of the same name that are initialized outside of the block.
Line `137` therefore initializes variable `animal` to string `cat`.
Line `141` calls the `puts` method and passes in the object that variable `animal` is referencing. This outputs `dog` and returns `nil`.
This also demonstrates `local variable scope`:
A local variable’s scope is determined by where it is inititalized.
Local variables that are initialized in an inner scope can't be accessed in the outer scope, but local variables that are initialized in the outer scope can be accessed in an inner scope.

Example 38
Line `412` initializes variable `words` to array `%w(jump trip laugh run talk)`
Lines `414` initializes variable `new_array` to the return value of method `map` calling the the object that `word` is referencing with the `do..end` block passed in as argument. 
The `map` method transforms each element in the calling array, returning a new array containing elements based on the return value of the block.
The block parameter is `word`.
Line `415`calls the `start_with?` method on the object that `word` is referencing.
Line `418` calls the `p` method and passes in the object that `new_array` is referencing. This outputs and returns the array `[false, true, false, false, true]`

Example 64
Lines `653-655` define the `greetings` method. It takes one parameter called `str`.
The last line of the block, line `654`, calls the `puts` method and passes in the string `Goodbye` as argument.
This will output `Goodbye` and return `nil` 
This is exactly what happens when, on line `658`, `greetings` is called and the object that `word` is referencing is passed in as argument. 

Example 10
Line `123` initializes variable `n` to integer `10`
Lines `125-127` call the `times` method on integer `1` with `do..end` block passed in as argument.
The block parameter is called `n` which is the same name as variable `n` that was intialized in the outer scope. This demonstrates `variable shadowing`:
Variable shadowing happens when the name of a block parameter is the same as the name of a local variable that was initialized outside the block.
Variable Shadowing prevents access to variables of the same name that are initialized outside of the block.
Line `129` calls the `puts` method and passes in `n` as an argument. 
This outputs `10` and returns `nil`. 

Example 16
Line `177` initializes variable `a` to float `5.2`
Line `178` initalizes variable `b` to float `5.3`
Line `180` reassigns variable `a` to the object that `b` is referencing. Both `a` and `b` point at the same object.
Line `182` reassings variable `b` to the return value of the method call `+` on the variable `b` with the object `1.1` passed to it as an argument.
Variables `a` and `b` point at separate objects.

Example 29
Line `331` initializes variable `a` to string `hello`
Line `332` calls method `a_method` and passes in variable `a` as an argument.
Lines `327-329` define method `a_method`. It takes one parameter called `string`.
Line `328` calls the destructive `<<` parameter on variable `string` with the string ` world` passed in as an argument.
This mutates the object that variables `string` and `a` are pointing to. 
Line `334` calls the `p` method and passes in `a` as an argument. It outputs and returns `hello world`.
This demonstrates the concept of `mutating methods`:
Mutating methods change the value of the calling object’s space in memory.
It also demonstrates the concept of `object passing`:
When an object is passed in as an argument to a method call, the method parameter acts as a pointer to the original object.

Example 31
Line `346` initializes variable `a` to the array `%w(a b c)`
Line `347` assigns a new element in variable `a` which returns the given object.
Line `348` calls the `p` method and passes in `a` as an argument. This outputs and returns `%w(a - c)`.
This code demonstrates element assignment to a specifc index of an array object.

Example 48
This code calls the `all?` method on hash `{ a: "ant", b: "bear", c: "cat" }`. The `do..end` block is passed in as argument. The block parameters are `key` and `value`.
Line `497` compares if operand `value.length` is greater or equal to operand `3`.
If line `497` returns `true` for all elements, the method invocation `all?` will return `true`, otherwise it will return `false`. In this case it returns `true`.
This demonstrates the `all?` method.

Example 54
Lines `545-547` define method `test`. It takes no parameter. The last line of the block calls the `puts` method and passes in the string `written assessment`. This outputs the string and returns `nil`.

Line `549` initializes variable `var` to the return value of method invocation `test`.

Lines `551-555` contain an `if..else` conditional.
The `if..else` conditional checks for the truthiness of the expression following `if`. If that condition evaluates as truthy line `552` will be evaluated and returned. Otherwise, line `554` will be evaluated and returned.

In this case line `554` will be evaluated and returned since `var` holds the immediate value `nil`.
This outputs `interview` and returns `nil`. 

This demonstrates the concept of `truthiness`:
In Ruby, every value apart from `false` and `nil` is `truthy` and `false` and `nil` are `falsey`.

Example 63

Line `642` initializes variable `a` to integer `1`.

Lines `644-648` call the `loop` method and pass in the `do..end` block as argument. 
Line `645` calls the `puts` method and passes in variable `a` as an argument.
Line `646` reassigns variable `a` to the return value of the method call `Integer#+` on the variable `a` with the integer `1` passed to it as an argument.

Line `650` calls the `puts` method and passes in `a` as an argument. This outputs `2` and returns `nil`.
This code demonstrates the concept of `local variabel scope`:
A local variable’s scope is determined by where it is inititalized.
Local variables that are initialized in an inner scope can't be accessed in the outer scope, but local variables that are initialized in the outer scope can be accessed in an inner scope.

**Ruby code block**

```ruby
def method(parameter)
end
```

Example 43

The `map` method transforms elements from the collection it was called upon. It invokes the given block once for each element of self and returns a new array containing the values returned by the block. It considers the return value of the block for each element. If the return value is `nil`, it adds `nil` to the new array. The length of the return collection is the length of the original. If a block is given, `map` always returns a new array. The block may cause side-effects.

In this example variable `a` is initialized to string `hello` on line 1. On line `3` we call the `map` method on the array `[1,2,3]` and pass in the `{..}` block as an argument. The block implicityly returns the object that variable `a` is referencing for each element of self because it's the block's last line of code. So the `map` method returns the new array `['hello', 'hello', 'hello']`

Example 19

Line `217` initializes variable `y` to string `a`. Line `218` calls the `increment` method and passes in the object that `y` is referencing as an argument. 
Now variable `y` and parameter `x`, which is defined as part of the method definition on lines `1-3`, point to the same object. Line `214` calls the destructive `<<` method on the object that `x` is referencing and passes in string `b` as an argument. A mutating method mutates the value of its argument or caller. In this case the object that variables `x` and `y` are referencing is mutated to `ab`. So when the `puts` method is called on line `220` and the object that `y` is referencing is passed in as an argument, it outputs `ab`. 

Example 17
Lines `187-190` define method `test`. It takes one parameter called `str`. Line `188` reassigns variable `str` and line `189` calls a destructive method on the new object.

Line `192` initializes variable `test_str` to string `Written Assessment`. This object is passed into the method call `test` as an argument on line `193`.
Now variables `test_str` and `str` point at the same object. Until `str` is reassigned on line `188`. Now the variables point at separate objects. `test_str` still points at `Written Assessment`. So when the `puts` method is called on line `195` and this string is passed in as an argument, the output is `Written Assessment`. 

Example 24
Lines `270-274` define the mehtod `fix`. It takes one parameter called `value`. Lines `271-272` call destructive methods on the object that `value` is referencing. 
A mutating method mutates the value of its argument or caller.
Line `276` initializes variable `s` to string `hello`. Line `277` calls the method `fix` and passes in the object that `s` is referencing as an argument. Now variables `s` and `value` point at the same object. This object is mutated by the destructive methods on line `271-2` so both variables now point at the mutated object `HELLO!`. This value is also returned by the `fix` method on line `277` and assigned to variable `t`.  

Example 16

Line `177` initializes variable `a` to float `5.2`. Line `178` initializes variable `b` to float `7.3`. The variables point at separate objects. Line `180` reassigns variable `a` to the object that `b` is referencing. Now both variables point at the same object. Line `182` reassigns variable `b` once more. Now both variables point at separate objects. 

Example 59
Lines `599-601` define the method `include?`. It takes two parameters called `arr` and `search_item`. Line `600` calls the `each` method on `!arr`. 
The `each` method iterates through the elements from the collection it was called upon and returns the original collection. It does not consider the return value of the block. The length of the returned collection is the same as the length of the original collection.
Since in this example the caller is `!arr`, the method returns `false`. The truthiness of the block's return value is not taken into consideration. Since this return value is the return value of the block's last line of code, it is implicitly the return value of the `include?` method. 

So when the `include?` method is called on line `603` it returns `false`.

Example 38

Line `412` initializes variable word to array `%w(jump trip laugh run talk)`. Lines `414-416` initialize variable `new_array` to the return value of method call `map` on the object that `words` is referencing with the `do..end` block passed in as an argument. 

The `map` method transforms elements from the collection it was called upon. It invokes the given block once for each element of self and returns a new array containing the values returned by the block. It considers the return value of the block for each element. If a block is given, `map` always returns a new array.

Line `415` calls the `start_with?` method on the object that block parameter `word` is referencing. In this case this returns `false, true, false, false, false, true`. These values populated the new array that `map` returns and are assigned to variable `new_array`.

Example 49

This code demonstrates the `each_with_object` method. The `each_with_object` method calls the block once for each element, passing both the current element and the memo object.

This code calls the `each_with_index` method on array `[1,2,3]` and passes in the `do..end` block as an argument. The block takes two block parameters called `num` and `index`. Line `504` calls the `puts` method and passes in a string interpolation as an argument. This string interpolation references the block parameters `num` and `index`.
The method call outputs the string interpolation, outputing `
`The index of 1 is 0.`, `The index of 2 is 1.` and `The index of 3 is 2.` and returns the caller, that is, `[1,2,3]`.

Example 20
Line `229` initializes variable `name` to string `jim`.
Line `230` calls the `change_name` and passes in the object that `name` is referencing as an argument.
Now variable `name` and method parameter `name` refer to the same object. Line `226` reassigns the parameter `name` to `bob` but it does not reassign the variable `name` that was initialized in the outer scope. The two variables point at separate objects now.  
So when on line `231` the `puts` method is called on the object that `name` is referencing, the output is `jim`.

Example 4

Lines `42-49` define the `example` method. It takes one parameter called `str`. Line `43` initializes variable `i` to integer `3`. Lines `44-48` call the `loop` method and pass in the `do..end` block as an argument. Line `46` calls the `puts` method and passes in the object that `str` is referencing as an argument. Line `46` reassigns variable `46`. Line `47` uses the keyword `break` to exit the loop if the object that `i` is referencing is equal to `0`. 

Line `51` calls the `example` method and passes in the string `hello` as an argument. This outputs `hello` three times and returns `nil`. 

55 minutes. 