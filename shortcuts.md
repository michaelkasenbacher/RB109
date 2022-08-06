

## **Local Variables**

**Local variable scope**

A local variable’s scope is determined by where it is inititalized.

**Variable initialization with scope**

On line `x` variable `y` is initialized in the outer scope to object `z`.
On line `x` variable `y` is initialized to object `z` within the scope of the `do..end` block. 

**Local variables in blocks**

A local variable’s scope is determined by where it is inititalized. In the case of method invocation with blocks this means that local variables that are initialized in an inner scope can't be accessed in the outer scope, but local variables that are initialized in the outer scope can be accessed in an inner scope.

**Local variables in methods**

Methods have self-contained variable scope. That means that only variables that are initialized within the method's body or that are defined as parameters can be referenced or modified from within the method's body. This also means that variables that are initialized inside a method's body aren't available outside the method's body. 

**Block**

The `block` is the structure that follows the method invocation `do..end`. The block acts an argument to the method. The level of interaction between block and method is set by the method definition and then used at method invocation.

**Block parameter**

Block parameter `num` is assigned the value of the current element in the calling object.

**Nested scopes**

A local variable’s scope is determined by where it is inititalized. In this case we have three separate scopes: the outer scope, the middle scope of the block that follows the method invocation `loop` and the inner scope that follows the method invocation `times`. The principle is still the same: Local variables that are initialized in an inner scope can't be accessed in the outer scope, but local variables that are initialized in the outer scope can be accessed in an inner scope. 

**Variable shadowing**

Variable shadowing happens when the name of a block parameter is the same as the name of a local variable that was initialized outside of the block. Variable Shadowing prevents access to variables of the same name that are initialized outside of the block. Variable shadowing initializes the block parameter to integer `0`.

Variable shadowing is considered bad practice as it frequently causes unintended consequences and errors. To avoid variable shadowing one simply has to rename the block parameter to anything but the name of the outer scope variable.

**Method definition**

```ruby
def method(parameter)
end
```

On lines `1-2` we define the method `method` which takes one parameter called `parameter`.

**Method invocation**

```ruby
method("hello")
```

On line `5` we call the method `method` and pass in the string `hello` as an argument.

```ruby
method(variable)
```

On line `5` we call the method `method` and pass in the object that variable `variable` is referencing as an argument.

## Variables as Pointers

In Ruby, variables are references to objects and don’t contain objects themselves.

**Immediate values** `true`, `nil`, `false`  

Variable `y` holds the immediate value.

## Object Passing

When an object is passed in as an argument to a method call, the method parameter acts as a pointer to the original object-until the parameter is assigned to a new object. 

## **Mutating Method Arguments**

A mutating method mutates the value of its argument or caller. 

**Mutating methods:**

```ruby
!, <<, concat(), a[0] = 'b'
```

**Non-mutating methods:**

```ruby
+=, a = b (reassignment)
```



## Object Passing and Mutating Methods

```ruby
string = string.upcase
```

1. Answer simple question like output on line `x`. 
2. When an object is passed in as an argument to a method call, the method parameter acts as a pointer to the original object-until the parameter is assigned to a new object.
3. In this case, variables `var` and `par` point to the same object after calling method `method` on line `x` and passing in the object that `var` is referencing as an argument.  
4. However, line `x` assigns variable `par` to a new object while `var` still points at the original object.

5. So the method call `method` does not change the object to which variable `var` is pointing. 
6. Thus the output on line `x`. 
7. Possible improvement: use mutating method on line `x`. 



```ruby
string = string.upcase!
```

1. Answer simple question like output on line `x`.
2. When an object is passed in as an argument to a method call, the method parameter acts as a pointer to the original object.
3. In this case, variables `var` and `par` point to the same object after calling method `method` on line `x` and passing in the object that `var` is referencing as an argument.  
4. Line `x` calls the destructive method `mutate!` on the object that `par` is referencing and assigns the return value to variable `par`. 
5. The destructive method call `mutate!` mutates the object and so variables `par` and `var` are still pointing at the original object. The mutated value is `mutated`. 

6. Thus the output on line `x`. 

7. Possible improvement: 

   

```ruby
string.upcase
```

1. Answer simple question like output on line `x`. 

2. When an object is passed in as an argument to a method call, the method parameter acts as a pointer to the original object.

3. In this case, variables `var` and `par` point to the same object after calling method `method` on line `x` and passing in the object that `var` is referencing as an argument.  

4. Line `x` calls the non-destructive method `method` on the object that `par` is referencing. 

5. As a result, calling method `method`, on line `x` , implicitly returns `new_object`.  

6. However, this method call does not change the object which variable `var` is referencing;  `var` still points at `original_object`. 

7. Thus the output on line `x`. 

8. Possible improvement:  use mutating method on line `x`. 

   

```ruby
string.upcase!
```

1. Answer simple question like output on line `x`. 
2. When an object is passed in as an argument to a method call, the method parameter acts as a pointer to the original object.
3. In this case, variables `var` and `par` point to the same object after calling method `method` on line `x` and passing in the object that `var` is referencing as an argument.  
4. Line `x` calls the destructive method `mutate!` on the object that `par` is referencing. 
5. The destructive method call `mutate!` mutates the object and so variables `par` and `var` are still pointing at the original object. The mutated value is `mutated`. 
6. Thus the output on line `x`. 
7. Possible improvement:  

## **Working with Collections**

**Array#select**

The `select` method selects elements from the collection it was called upon. It iterates over the collection and passes each element to the block. It returns a new collection based on the truthiness of the block’s return value. 

If the block's return value evaluates to `true`, then the element is selected and added to the new array. Otherwise, the element is skipped and not added to the new array. The truthiness of the return value is individually evaluated for each element of the collection. The length of the returned collection is the length of the original or less. If no element is selected, the return value is an empty array. If a block is given, the block may cause side-effects.

**Hash#select**

The `select` method selects elements from the collection it was called upon. It iterates over the collection and passes each key/value pair to the block. It returns a new collection based on the truthiness of the block’s return value. 

If the block's return value evaluates to `true`, then the element is selected and added to the new hash. Otherwise, the element is skipped and not added to the new hash. The truthiness of the return value is individually evaluated for each element of the collection. The length of the returned collection is the length of the original or less. If no element is selected, the return value is an empty hash. If a block is given, the block may cause side-effects.

**#select vs. #map**

The `select` method selects elements from the collection it was called upon and returns a new collection based on the truthiness of the block’s return value, while the `map` method creates a new array containing the values returned by the block. In other words, the return value of the `select` method consists of the values that are selected from its caller, while the return value of the `map` method consists of the values that are returned by its block.

All elements selected: The `select` method selects all the elements from the caller because the block's return value is truthy on each iteration. 

**#select vs. #each**

The `select` method selects elements from the collection it is called upon and returns a new array based on the truthiness of the block’s return value. The `each` method iterates through the elements from the collection it is called upon and returns the original collection.

All elements selected: The `select` method selects all the elements from the caller because the block's return value is truthy on each iteration. 

**#map vs #each**

The `each` method iterates through the elements from the collection it is called upon and returns the original collection. It doesn't consider the block's return value. The `map` method, on the other hand, returns a new array containing the values returned by the block.

**#map**

The `map` method transforms elements from the collection it was called upon. It invokes the given block once for each element of self and returns a new array containing the values returned by the block. It considers the return value of the block for each element. If the return value is `nil`, it adds `nil` to the new array. The length of the return collection is the length of the original. If a block is given, `map` always returns a new array. The block may cause side-effects.

The block is an opportunity to explain the concept of implicit return value. 

```ruby
arr = [1, 2, 3].map { |num| num }

p arr
```

**#each** 

The `each` method iterates through the elements from the collection it was called upon and returns the original collection. It does not consider the return value of the block. The length of the returned collection is the same as the length of the original collection. 

The `each` method evaluates the given block for each element in the caller. The block may cause side-effects.

**Nested #each**

```ruby
my_arr = [["a", "b"], ["c", "d"], ["e", "f"]]

my_arr.each do |arr|
  arr.each do |letter|
    puts letter
  end
end
```

**#each_with_object(object) { |(\*args), memo_object| ... } → object**

The `each_with_object` method calls the block once for each element, passing both the current element and the memo object.

**Sorting**

Sorting is setting the order of the items in a collection according to a certain criterion.

The `sort` method sorts items by using comparison. The comparison is carried out using the `<=>` method. The `<=>` method performs comparison between two objects of the same type and returns a `-1`, `0`, or `1`, depending on whether the first object is less than, equal to, or greater than the second object; if the two objects cannot be compared then `nil` is returned. The return value of the `<=>` method is used by `sort` to determine the order in which to place the items.

Comparing strings: The strings are compared character by character according to ASCII position. We can determine a string's ASCII position by calling the `ord` method on it. Longer strings are considered greater if the strings are equal when compared up to the shortest length.

Two examples:

```ruby
"a" <=> "b" #=> -1
"aa" <=> "a" #=> 1
```

We can also call `sort` with a block; this gives us more control over how the items are sorted. The block needs two arguments passed to it (the two items to be compared) and the return value of the block has to be `-1`, `0`, `1` or `nil`.

**Accessing sub-elements of a collection**

**hash[key] → value**

The `Hash#[]` method returns the `value` associated with the given `key`. This method allows us to access sub-elements of the collection. 

```ruby
my_hash = {a: 1, b: {d: 3, e: 5}, c: 7}

my_hash[:b][:d] # => 3
```

**array[index] = object → object**

Assigns a new element in variable `y` which returns the given object.
This code demonstrates element assignment to a specifc index of an array object. 

## **Variable and Method Evaluation**

```ruby
def some_method
  puts "True"
end

some_method == false # => false
```

**Truthiness**

In Ruby, every value apart from `false` and `nil` is `truthy` and `false` and `nil` are `falsey`.

## **Common code**

```ruby
counter += 1 # counter = counter.+(1)
```

Line `x` reassigns variable `counter` to the return value of the method call `Integer#+` on the variable `counter` with the integer `1` passed to it as an argument.

```ruby
2.times {|a| puts a}
```

We call the `times` method on integer `2` and pass the `do..end` block to it as an argument with `a` as block parameter.
The `puts` method is called and the object that variable `a` is referencing is passed to it as argument. It outputs to the screen and returns `nil`.

```ruby
var2 = upcase(var1)
```

Line `x` initializes `var2` to the return value of method invocation `upcase` with `var1` passed in as argument. 



**#if..else**

The `if..else` conditional checks for the truthiness of the expression following `if`. If that condition evaluates as truthy line `x` will be evaluated and returned. Otherwise, line `x` will be evaluated and returned.

**Comparison**

Operators: `==` 'is equal to', `!=` 'not equal to', `<` 'less than', `>` 'greater than'
Operands: the expressions to the left and right of the operator are the operands.
Line `x` compares if operand `num` is greater than operand `5`. This returns `true`.

**String interpolation**

a string interpolation that references the block variable. It outputs:

**Loop**

Lines `x` calls the `loop` method and passes in the `do..end` block as an argument.

Line `x` breaks out of the loop by using the keyword `break` if the value of the object that the local variable `[counter]` is referencing is [equal to 0]. 

## Be careful

**don't mix up**!

```ruby
arr = [1,2,3]
arr.map { |n| n > 1} #=> [false, true, true]
arr.map { |n| n if n > 1} #=> [nil, 2, 3]
```

**be exact**!

```ruby
names = ['bob', 'kim']
puts names #=> bob, kim
p names #=> ["bob", "kim"]

numbers = [1, 2]
puts numbers #=> 1, 2
p numbers #=> [1, 2]

hash = {:name => 'bob'}
puts hash #=> {:name=>"bob"}
p hash #=> {:name=>"bob"} 
```