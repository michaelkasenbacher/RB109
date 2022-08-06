*don't mix up*

arr = [1,2,3]

arr.map { |n| n > 1}
returns `[false, true, true]`

arr.map { |n| n if n > 1}
returns `[nil, 2, 3]` 

*be exact*

names = `['bob', 'kim']`
puts names
`bob`
`kim`

p names
`["bob", "kim"]`

numbers = [1,2]
puts numbers
`1`
`2`

p numbers
`[1, 2]`

hash = `{:name => 'bob'}`
puts hash
`{:name=>"bob"}`
p hash
`{:name=>"bob"}`