=begin
Write a method that will return a substring based on specified indices.
input: string, int1, optional int2
output: string
goal: slice the string based on the int1 and int2
rules: int1 indicates the starting index and int2 the end index
=end


def substring(str, int1, int2=int1)
  str.slice(int1..int2)
end

p substring("honey", 0, 2) == "hon"
p substring("honey", 1, 2) == "on"
p substring("honey", 3, 9) == "ey"
p substring("honey", 2) == "n"
