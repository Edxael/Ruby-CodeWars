# 02-Write-Number-in-Expanded-form.rb
# From codewars.com by Edxael  (that’s me)

# ------------------------------------------------------------------------------------------------------------
# Instructions
# You will be given a number and you will need to return it as a string in Expanded Form. For example:
#
# expanded_form(12); # Should return ’10 + 2′
# expanded_form(42); # Should return ’40 + 2′
# expanded_form(70304); # Should return ‘70000 + 300 + 4
# ------------------------------------------------------------------------------------------------------------

 	# Write Number in Expanded form
def expanded_form(num)
		#creating variables
	expanded = ""
	individual = ""
	holder = 0

		#convert to String
		#split into array
	num = num.to_s.split("")
	zeros = (num.length - 1)

		#Concatenate new string
	num.length.times() do |x|

			#Converting to Integer current character
		holder = num[x].to_i

			#This will add the zeros need
		zeros.times do
			holder *= 10
		end
		zeros -= 1

			#If true will skip the rest of this cycle
		next if holder == 0

			#Convert back to string
		holder = holder.to_s

			#Concatenating
		expanded << holder + " + "
	end

		#Cutting last characters and returning final string
	p expanded.chomp!(" + ")
end

expanded_form(703)

# ----------------------------------
# 	Test Run
#"700 + 3"
# ----------------------------------
