def letter_count(str)
  arr = str.chars
  arr = arr.map {|i| i.to_sym}
  arr.map.with_object({}) {|value, hash|
  hash[value] = arr.count(value)}
end

p letter_count("arithmetics")