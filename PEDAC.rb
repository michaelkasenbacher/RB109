# Given a string, find all those substrings contained in it of #at least two characters
# where the substring is adjacent to a substring that is the reverse of itself.

# INPUT: String
# OUTPUT: Array of substrings

# GOAL: Return all substrings of 2 characters or more that are back-to-back with a
# substring that is a mirror-image of itself.
# - Substrings must be at least 2 characters in length
# - Substrings of substrings, as long as they meet the criteria, must be included in 
# the return array (ex. 2)
# - The return result must not contain duplicates (ex. 3)
# - The two adjacent substrings must not share an element at the same index (ex. 4)
# - If no substrings qualify, return an empty array (ex. 4)

# DATA STRUCTURE:
# String -> Array of characters -> Array of substrings

# ALGORITHM (High-Level): 
# - Find all substrings of 2 characters or more (wish: HELPER METHOD #1)
# - Check whether any of the substrings are consecutive mirror-images of each other 
#   (wish: HELPER METHOD #2)
# - If so, push them to a `results` array
# - Return `results`

# HELPER-METHOD 1: Find substrings of 2 or more characters
# - Initialize an empty array `results`
# - Iterate over input string starting at 0 up to the length of string minus 2
#   (start_index)
#   - Iterate over input string starting at start_index up to the length of string 
#   minus 1 (end_index)
#	    - Push substrings to `results`
# - Return `results`

# HELPER-METHOD 2: Find Mirror-image substrings
# - Initialize empty `results` array
# - Iterate over the array of substrings
# - For each substring, break it down into two halves
#   - If the first half is equal to the second half in reverse, push both halves to
#   the `results` array
# - Return results array


=begin
# —-------PROBLEM / objective: —-------
# Input: 
# Output: 
# Goal: 

# —-------Explicit Rules:----------
-
# —-------Implicit Rules:----------
- 
# —-------Edge cases:----------
# —-------Questions:----------

# —-------EXAMPLES / TEST CASES:----------

# —-------DATA STRUCTURES:----------

# —-------ALGORITHM:----------
# High-Level:

# Low-Level:
- 
- 
	-  
-

=end

# Restate the problem
# algo: use plain language
# code: follow algo