# 03-Create-Phone-Nunber.rb
# From codewars.com by Edxael  (that’s me)

# ------------------------------------------------------------------------------------------------------------
# Instructions
# Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.
# .
# Example:
# createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) // => returns "(123) 456-7890"
# .
# The returned format must be correct in order to complete this challenge.
# Don’t forget the space after the closing parentheses!
# ------------------------------------------------------------------------------------------------------------

    # Create Phone Nunber method
def createPhoneNumber(numbers)

 		# Convert each elemetn on the array to string
 	numbers.map! {|x| x.to_s}

 		# Insert special characters of phone number
 	numbers.insert(0, "(")
 	numbers.insert(4, ")")
 	numbers.insert(5, " ")
 	numbers.insert(9, "-")

 		# Concatenating array into a string
 	p numbers.inject {|phone, n| phone << n }
end

	# Calling the method
createPhoneNumber([8, 0, 1, 8, 8, 8, 9, 9, 7, 9])

# ----------------------------------
# 	 Test Run
# "(801) 888-9979"
# ----------------------------------

# Note:
# The following code is not written by me, it was created by another user of codewars.com it belongs to the user: “Jwashton” enjoy it.

def createPhoneNumber(numbers)
  p "(%d%d%d) %d%d%d-%d%d%d%d" % numbers
end
