# input: string
# output: boolean
# goal: check if the parentheses in the string are balanced
# rules: '(' must always come before ')'
# for every ( must be a )
# algo: create counter for ()
# for every ( += 1 and for every ) -= 1
# return true if even at the end
# return false if counter < 0


def balanced?(str)
  counter = 0
  str.chars.each do |char|
    if char == "("
      counter += 1
    elsif char == ")"
      counter -= 1
    end
    return false if counter < 0
  end
  return true if counter == 0
  false

end

p balanced?('What (is) this?') #== true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') #== true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false