# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# Examples:

def to_weird_case(string)
  arr = string.split
  
  arr2 = arr.map.with_index do |sub, idx| 
    if (idx+1) % 3 != 0
      sub
    else
      sub.chars.each_with_index {|char, idx| char.upcase! if idx.odd?}.join
    end
  end
  arr2.join(" ")
end



p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case('It is a long established fact that a reader will be distracted') ==
   'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".

# input: string
# output: string
# aim: modify return string so that every second character of third word is uppercase. 
# challenge: identify every third word
  # identify every second letter in that word
  # modify that letter
  # return new string

# algo: convert string to array
  # select every third word. use .split
  # select every second letter from those subarrays and modify them
  # modify array back to string
