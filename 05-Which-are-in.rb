# 05-Which-are-in.rb
# From codewars.com by Edxael  (that’s me)

# ------------------------------------------------------------------------------------------------------------
# Instructions
# Given two arrays of strings a1 and a2 return a sorted array r in lexicographical order of the strings of a1 which are substrings of strings of a2.
# .
# Example 1:
# a1 = ["arp", "live", "strong"]
# .
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
# .
# returns ["arp", "live", "strong"]
# .
# Example 2:
# a1 = ["tarp", "mice", "bull"]
# .
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
# .
# returns []
# .
# Notes:
# Arrays are written in “general” notation. See “Your Test Cases” for examples in your language.
# .
# Beware: r must be without duplicates.
# ------------------------------------------------------------------------------------------------------------

    #Which are in?
def in_array(array1, array2)

		#Create product array
	array3 = []

		#Nested .each to review strings
 	array2.each do |x|
 		array1.each do |y|
 			if x.include?(y)
 				array3.push(y)
 			end
 		end
 	end

 		#Fail-Safe re configure array if empty.
 	if array3.empty? == true
 		array3 = []

 		#Sort array and delete duplicates.
 	else
 		array3.sort!.uniq!
 	end

 		# returning product array
 	p array3
end

	#Calling method
in_array(["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"])

# ---------------------------------------
# 	 Test Run
#["arp", "live", "strong"]
# ---------------------------------------

# ***************************************************************

# Note:
# The following code is not written by me, it was created by another user of codewars.com.
# it belongs to the user: “colbydauph”.

def in_array(array1, array2)
  array1.select{|s| array2.any?{|w| w.include?(s) } }.sort
end
