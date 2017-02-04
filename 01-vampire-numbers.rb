# 01-vampire-numbers.rb
# From codewars.com by Edxael  (that’s me)

# ------------------------------------------------------------------------------------------------------------
# Instructions
# 6 * 21 = 126 # 6 and 21 would be valid ‘fangs’ for a vampire number as the # digits 6, 1, and 2 are present in both the product and multiplicands
#
# 10 * 11 = 110 # 110 is not a vampire number since there are three 1’s in the # multiplicands, but only two 1’s in the product
# ------------------------------------------------------------------------------------------------------------

      # Vampire Numbers
def vampire_test(a,b)

                  # Working with the product

            #Multiply numbers to get product
      multy = a * b

            #Convert Product to string
      multy = multy.to_s

            #split in individual characters
            #sort them
            #jointhem togheter as a string
      multy = multy.split('').sort!.join("")
      p multy

                  # working with the factors

            #Convert each to string and concatenatethem
      factors = a.to_s + b.to_s

            #split in individual characters
            #sort them
            #jointhem togheter as a string
      factors = factors.split('').sort!.join("")

            #Comparing if they are equal will return true
      multy.eql?(factors)
end


vampire_test(6,21)

# ----------------------------------
#     Test Run
# 126
# ----------------------------------
