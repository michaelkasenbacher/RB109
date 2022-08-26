# input: string
# output: hash
# goal: count the frequency of the string's letter.
  # return a hash that takes each letter as key and the frequency as value
# algo: string to array with chars. then map elements to sym. map with object. 


def letter_count(str)
  arr = str.chars.map {|letter| letter.to_sym}
  hsh = arr.map.with_object({}) {|value, hash| hash[value] = arr.count(value)}
end

p letter_count('codewars')#, {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1})
letter_count('activity')#, {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1})
letter_count('arithmetics')#, {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2})