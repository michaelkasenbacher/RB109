# input: string
# output: string
# goal: change all even indexed letters to upcase and all odd indexed letters to downcase
# rules: start index a new for each word
# algo: split string -> arr. -> arr.map.withindex -> string

def weirdcase(str)
  arr = str.split
  arr = arr.map {|word| word.chars}
  arr = arr.map {|word| word.each_with_index do |letter, idx|
    letter.upcase! if idx.even?
    letter.downcase! if idx.odd?
  end}
  arr = arr.map {|word| word.join("")}
  arr.join(" ")
end


p weirdcase( "String" )#=> returns "StRiNg"
p weirdcase( "Weird string case" );#=> returns "WeIrD StRiNg CaSe"