# Your task is to sort a given string. Each word in the string will contain a single number.
# This number is the position the word should have in the result.

# Note: Numbers can be from 1 to 9. So 1 will be the first word (not 0).

# If the input string is empty, return an empty string.
# The words in the input String will only contain valid consecutive numbers.

# Examples
# "is2 Thi1s T4est 3a"  -->  "Thi1s is2 3a T4est"
# "4of Fo1r pe6ople g3ood th5e the2"  -->  "Fo1r the2 g3ood 4of th5e pe6ople"
# ""  -->  ""

def sort(str)
  arr = str.split
  arr.sort_by {|word| word.scan(/[0-9]/).join.to_i}.join(" ")
end

# p sort("is2 Thi1s T4est 3a")#

# "is21".scan(/[0-9]/).join.to_i

# p sort("is2 Thi1s T4est 3a")#  -->  "Thi1s is2 3a T4est"
# p sort("4of Fo1r pe6ople g3ood th5e the2")#  -->  "Fo1r the2 g3ood 4of th5e pe6ople"
# p sort("") #  -->  ""
# p sort("is2 Thi1s T11est 10a")

# input: string
# output: string
# goal: order the substrings according to the number contained in the words.
# algo: #split the input string
  # turn substrings into #chars arrays
  # duplicate: have arr1 and arr2
  # in arr2 sort words individually ["i", "s", "2"] -> ["2", "i", "s"]
  #   sort all substrings -> word with lowest number is first. [["1", "T", "h", "i", "s"], ["2", "i", "s"]
  # arr1 contains the word arrs in original order = ["i", "s", "2"]
  # create empty output array 
  # iterate through arr1 and arr2 with parameters |original| |sorted|
  # output << original if original.sort == sorted
  # output.join


def sort(str)
  arr1 = str.split.map {|word| word.chars}
  arr2 = arr1.map {|word| word.sort}.sort
  output = []
  arr2.each do |sorted|
    arr1.each do |original|
      output << original.join if sorted == original.sort
    end
  end
  output.join(" ")
end

p sort("is2 Thi1s T11est 10a")

# input: string
# output: string
# goal: each substring contains a number, sort the substrings according to the number
# algo: create numbers array 1..9
  # split string
  # create empty output array
  # iterate through numbers array
    # if number include? in word, << word to output array
  # return output array
# rules: if string is empty -> return empty string

# def sort(str)
#   numbers = ("1".."9").to_a
#   arr = str.split
#   output = []
#   numbers.each do |num|
#     arr.each do |word|
#       output << word if word.include?(num)
#     end
#   end
#   output.join(" ")
# end

# p sort("is2 Thi1s T4est 3a")#  -->  "Thi1s is2 3a T4est"
# p sort("4of Fo1r pe6ople g3ood th5e the2")#  -->  "Fo1r the2 g3ood 4of th5e pe6ople"
# p sort("") #  -->  ""
# p sort("is2 Thi1s T11est 10a")













































# Examples
# "is2 Thi1s T4est 3a"  -->  "Thi1s is2 3a T4est"
# "4of Fo1r pe6ople g3ood th5e the2"  -->  "Fo1r the2 g3ood 4of th5e pe6ople"
# ""  -->  ""

# input: string
# output: string
# goal: string  contains words that in themselves contain numbers -> return a new string in order of the numbers within the words.
#eg. "is2 Thi1s" -> 1 < 2 -> "Th1s is2"
#[["i", "s", "2"], ["T", "h", "i", "1", "s"]]
#algo: split str -> arr -> word.chars -> sort the subelements. 

# def order(str)
    
#   arr = str.split
#   arr.map! {|word| word.chars.sort}
#   arr.sort!
#   arr.map {|word| word.join}.join(" ")
  
# end


# p order("is2 Thi1s T4est 3a") #== "Thi1s is2 3a T4est"
#p order("4of Fo1r pe6ople g3ood th5e the2") == "Fo1r the2 g3ood 4of th5e pe6ople"
#p order("") == ""