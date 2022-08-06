# Example 1
a = 'Hello'
b = a
a = 'Goodbye'
puts a
puts b



# Example 2
a = 4

loop do
  a = 5
  b = 3


  break
end

puts a
puts b



# Example 3
a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b



# Example 4
def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')



# Example 5
def greetings(str)
  puts str
  puts "Goodbye"
end

word = "Hello"

greetings(word)



# Example 6
arr = [1, 2, 3, 4]

counter = 0
sum = 0

loop do
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end 

puts "Your total is #{sum}"



# Example 7





# Example 8
animal = "dog"

loop do |_|
  animal = "cat"
  var = "ball"
  break
end

puts animal
puts var



# Example 9 / 1
a = 4
b = 2

2.times do |a|
  a = 5
  puts a
end

puts a
puts b



# Example 10 / 2
n = 10

1.times do |n|
  n = 11
end

puts n



# Example 11 / 3
animal = "dog"

loop do |animal|
  animal = "cat"
  break
end

puts animal



# Example 12 / 1
a = "hi there"
b = a
a = "not here"



# Example 13 / 2
a = "hi there"
b = a
a << ", Bob"



# Example 14 / 3
a = [1, 2, 3, 3]
b = a
c = a.uniq



# Example 15 / 4
def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)



# Example 16 / 5
a = 5.2
b = 7.3

a = b

b += 1.1



# Example 17 / 6
def test(str)
  str  += '!'
  str.downcase!
end

test_str = 'Written Assessment'
test(test_str)

puts test_str



# Example 18 / 7
def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)

puts a
puts b



# Example 19 / 8
def increment(x)
  x << 'b'
end

y = 'a'
increment(y) 

puts y



# Example 20 / 9
def change_name(name)
  name = 'bob'      # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name 



# Example 21 / 10
def cap(str)
  str.capitalize!   # does this affect the object outside the method?
end

name = "jim"
cap(name)
puts name 



# Example 22 / 11
a = [1, 3]
b = [2]
arr = [a, b]
arr

a[1] = 5
arr



# Example 23 / 12
arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

puts arr1 
puts arr2



# Example 24 / 1
def fix(value)
  value.upcase!
  value.concat('!')
  value
end

s = 'hello'
t = fix(s)



# Example 25 / 2
def fix(value)
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)



# Example 26 / 3
def fix(value)
  value << 'xyz'
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)



# Example 27 / 4
def fix(value)
  value = value.upcase!
  value.concat('!')
end

s = 'hello'
t = fix(s)



# Example 28 / 5
def fix(value)
  value[1] = 'x'
  value 
 end
 
 s = 'abc'
 t = fix(s)



#  Example 29 / 6
def a_method(string)
  string << ' world'
end

a = 'hello'
a_method(a)

p a



# Example 30 / 7
num = 3

num = 2 * num



# Example 31 / 8
a = %w(a b c)
a[1] = '-'
p a



# Example 32 / 9
def add_name(arr, name)
  arr = arr + [name]
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names



# Example 33 / 10
def add_name(arr, name)
  arr = arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names



# Example 34 / 1
array = [1, 2, 3, 4, 5]

array.select do |num|
   puts num if num.odd?
end



# Example 35 / 2
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.select { |n| n.odd? }



# Example 36 / 3
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n| 
  n + 1
end
p new_array



# Example 37 / 4
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n| 
  n + 1
  puts n
end
p new_array



# Example 38 / 5
words = %w(jump trip laugh run talk)

new_array = words.map do |word|
  word.start_with?("t")
end

p new_array



# Example 39 / 6
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |n| puts n }



# Example 40 / 7
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

incremented = arr.map do |n| 
            n + 1
            end
p incremented



# Example 41 / 8
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.map do |n| 
  n > 1
end
p new_array



# Example 42 / 9
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.map do |n| 
  n > 1
  puts n
end
p new_array



# Example 43 / 10
a = "hello"

[1, 2, 3].map { |num| a }



# Example 44 / 11
[1, 2, 3].each do |num|
  puts num
end



# Example 45 / 1
[1, 2, 3].any? do |num|
  num > 2
end



# Example 46 / 2
{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end



# Example 47 / 3
[1, 2, 3].all? do |num|
  num > 2
end



# Example 48 / 4
{ a: "ant", b: "bear", c: "cat" }.all? do |key, value|
  value.length >= 3
end



# Example 49 / 5
[1, 2, 3].each_with_index do |num, index|
  puts "The index of #{num} is #{index}."
end



# Example 50 / 6
{ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
  array << pair.last
end



# Example 51 / 7
{ a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |(key, value), hash|
  hash[value] = key
end



# Example 52 / 8
odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

p odd 
p even



# Example 53 / 1
a = "Hello"

if a
  puts "Hello is truthy"
else
  puts "Hello is falsey"
end



# Example 54 / 2
def test
  puts "written assessment"
end

var = test

if var
  puts "written assessment"
else
  puts "interview"
end



# Example 55
def repeater(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end

repeater('Hello')



# Example 56
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}



# Example 57
total = 0
[1, 2, 3].each do |number|
  total += number
end
puts total



# Example 58
def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)



# Example 59
def include?(arr, search_item)
  !arr.each { |item| return true if item == search_item }
end

include?([1, 2, 3, 4, 5], 6)



# Example 60
def merge(array_1, array_2)
  array_1 | array_2
end

arr1, arr2 = ['hello'], ['hello', 'world']
merged = merge(arr1, arr2)
merged[0][0] = 'J'
p merged
p arr1
p arr2



# Example 61
def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

short_long_short('abc', 'defgh')



# Example 62
[1, 2, 3].each do |num|
  puts num
end



# Example 63
a = 1 

loop do       
  puts a    
  a = a + 1   
  break      
end

puts a

# Example 64
def greetings(str)
  puts "Goodbye"
end

word = "Hello"
greetings(word)