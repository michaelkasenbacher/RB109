=begin
Write a method that combines two Arrays passed in as arguments and returns a new Array that
contains all elements from both Array arguments, with the elements taken in alternation.
You may assume that both input Arrays are non-empty and that they have the same number of elements.
input: two arrays
output: array
goal: interleave the two arrays so that a char from arr1 is followed by one from arr2
algo: results array, loop, counter for index, 
=end

def interleave(arr1, arr2)
  result = []
  counter = 0
  while counter < arr1.size
    result << arr1[counter]
    result << arr2[counter]
    counter += 1
  end
  result
  
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, "a", 2, "b", 3, "c"]
