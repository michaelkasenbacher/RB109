# input: string
# output: hash
# goal: return string with three keys: lowercase, uppercase, neither and as respective values the % of characters that the string consists of/
# algo: create empty hsh. iterate through string. arr << letter according to category. -> sum
# string.size -> calculate %.

def letter_percentages(str)
  length = str.size
  lowercase = []
  uppercase =[]
  neither = []

  arr = str.chars
  arr.each do |char|
    if char =~ /[a-z]/
      lowercase << char
    elsif char =~ /[A-Z]/
      uppercase << char
    else
      neither << char
    end
  end

  hsh = {}

  hsh[:lowercase] = (lowercase.size).fdiv(length)*100
  hsh[:uppercase] = (uppercase.size).fdiv(length)*100
  hsh[:neither] = (neither.size).fdiv(length)*100
  
  hsh
end

def letter_percentages(str)
  low = 0.0
  up = 0.0
  neither = 0.0
  
  str.chars.each do |i|
    low += 1 if i =~ /[a-z]/
    up += 1 if i =~ /[A-Z]/
    neither += 1 if i !~ /[A-Za-z]/
  end

  total = low + up + neither

  low_p = (low / total) * 100.0
  up_p = (up / total) * 100.0
  neither_p = (neither / total) * 100.0

  result = {lowercase: low_p, uppercase: up_p, neither: neither_p}
  
end


p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }