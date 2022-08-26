# https://www.codewars.com/kata/5208f99aee097e6552000148/ruby

# input: string
# output: string
# goal: split the camelcased word before upcase
# algo: use sub

def solution(str)
  str.split(/(?=[A-Z])/).join(" ")
  
end


p solution('camelCasing')#, 'camel Casing')
p solution('camelCasingTest')