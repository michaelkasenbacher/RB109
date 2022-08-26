>On line 2 what we’re doing is initializing another local variable, `arr_b`, to the return value of invoking the `dup` method and passing in `arr_a` as a parameter.

I don't think that `arr_a` is a parameter in this case. I would say something like 'invoking the `dup` method on `arr_a`' or 'invoking the `dup` method on the object that variable `arr_a` is referencing.' 

Then on line 4 we invoke the upcase! method and pass element 1 of arr_b in as an argument to it.