# input: two arrays with integers
# output: boolean
# goal: check if all elements from arr1 appear in arr2 as squared numbers.
# algo: square all nums form arr1. 
  # sort arr1 and arr2
  # compare arr1 and arr2.


def comp(arr1, arr2)
  arr1 = arr1.map {|num| num * num}.sort
  arr2 = arr2.sort
  arr1 == arr2
end


p comp( [121, 144, 19, 161, 19, 144, 19, 11],[11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19])
# true)

p comp([121, 144, 19, 161, 19, 144, 19, 11], [121, 14641, 20736, 36100, 25921, 361, 20736, 361]) #false