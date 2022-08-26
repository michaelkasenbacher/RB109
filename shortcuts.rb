# all substrings
def substrings(str)
  output = []
  (0...str.length).each do |start_index|
    (start_index...str.length).each do |end_index|
      output << str[start_index..end_index]
    end
  end
  output
end

# in this case minimum length is 2
def substrings_with_min_length(str)
	results = []
	(0...str.length - 1).each do |start_index|
		(start_index + 1...str.length).each do |end_index|
			results << str[start_index..end_index]
		end
	end
	results
end


def substrings_with_length(string, length=2)
  result = []
  0.upto(string.size-length) do |char|
    result << string[char...char+length]
  end
  result
end

def substrings_upto_length(string)
  result = []
  1.upto(string.size / 2) do |length|
    if (string.size % length == 0)
      result << string[0, length]
    end
  end
  result  
end

# p substrings('abcabc')
p substrings_with_length('abcabc')
# p substrings_upto_length('abcabc')

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

substrings = ["ab", "abc", "abcd", "abcde"]
p substrings.max_by {|sub| [substrings.count(sub), sub.size]}

substrings = ["ab", "abc", "abc", "abcd", "abcde"]
p substrings.max_by {|sub| [substrings.count(sub), sub.size]}