# 06-Ones-and-Zeros.rb
# From codewars.com by Edxael  (that’s me)

# ------------------------------------------------------------------------------------------------------------
# Instructions
# .
# Given an array of one’s and zero’s convert the equivalent binary value to an integer.
# .
# Eg: [0, 0, 0, 1] is treated as 0001 which is the binary representation of 1
# .
# Examples:
# Testing: [0, 0, 0, 1] ==&gt; 1
# Testing: [0, 0, 1, 0] ==&gt; 2
# Testing: [0, 1, 0, 1] ==&gt; 5
# Testing: [1, 0, 0, 1] ==&gt; 9
# Testing: [0, 0, 1, 0] ==&gt; 2
# Testing: [0, 1, 1, 0] ==&gt; 6
# Testing: [1, 1, 1, 1] ==&gt; 15
# Testing: [1, 0, 1, 1] ==&gt; 11
# ------------------------------------------------------------------------------------------------------------

    #Ones and Zeros
def binary_array_to_number(barray)

		#Inverting array because
		#bynary numbers read from left to right
    barray.reverse!

    	#Initialize multiplyer
    multiplyer = 0

    	#Recurcion to add numbers
    barray.length.times do |x|

    		#making sure only "1's" are used.
        if barray[x] == 1
        	multiplyer += 2**x
        end

    end

    	#returning decimal value
    multiplyer
end

p binary_array_to_number([0,1,1,0])

# ---------------------------------------
# 	 Test Run
# 6
# ---------------------------------------

# ***************************************************************

# Note:
# The following code is not written by me, it was created by another user of codewars.com.
# it belongs to the user: “basilekoko”.

def binary_array_to_number(arr)
  arr.join("").to_i(2)
end
