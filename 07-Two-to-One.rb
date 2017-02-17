# 07-Two-to-One.rb
# From codewars.com by Edxael  (that’s me)

# ------------------------------------------------------------------------------------------------------------
# Instructions
# .
# Take 2 strings s1 and s2 including only letters from ato z. Return a new sorted string, the longest possible, containing distinct letters, – each taken only once – coming from s1 or s2.
# .
# Examples:
# a = "xyaabbbccccdefww"
# b = "xxxxyyyyabklmopq"
# longest(a, b) -&gt; "abcdefklmopqwxy"
# .
# a = "abcdefghijklmnopqrstuvwxyz"
# longest(a, a) -&gt; "abcdefghijklmnopqrstuvwxyz"
# ------------------------------------------------------------------------------------------------------------

    #Two to One
def longest(a1, a2)

    #Initializing arrays
ar1, ar2, ar3 = Array.new

    #Spliting strings to single characters
    #into arrays 1 & 2
ar1 = a1.split("")
ar2 = a2.split("")

    #Concatenating arrays 1 & 2
ar3 = ar1 + ar2

    #Deleting duplicates and sort values
ar3.uniq!.sort!

    #From array values to single String
    #and returning the string.
ar3 = ar3.join("")

end

#Calling and Printing method.
p longest("aretheyhere", "yestheyarehere")

# ---------------------------------------
# 	 Test Run
# "aehrsty"
# ---------------------------------------

# ***************************************************************

# Note:
# The following code is not written by me, it was created by another user of codewars.com.
# it belongs to the user: “Beast”.

def longest(a, b)
  (a+b).chars.uniq.sort.join
end
