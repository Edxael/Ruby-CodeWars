# 04-who-Likes-it.rb
# From codewars.com by Edxael  (that’s me)

# ------------------------------------------------------------------------------------------------------------
# Instructions
# You probably know the “like” system from Facebook and other pages. People can “like” blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.
# .
# Implement a function likes :: [String] -> String, which must take in input array, containing the names of people who like an item. It must return the display text as shown in the examples:
# .
#    Examples
# likes [] // must be "no one likes this"
# likes ["Peter"] // must be "Peter likes this"
# likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
# likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
# likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others like this"
# ------------------------------------------------------------------------------------------------------------

# Who Likes it?
def likes(names)

    # using if to chose string to return.
if names.length == 0
    return "no one likes this"
elsif names.length == 1
    return "#{names[0]} likes this"
elsif names.length == 2
    return "#{names[0]} and #{names[1]} like this"
elsif names.length == 3
    return "#{names[0]}, #{names[1]} and #{names[2]} like this"
elsif names.length >= 4
    return "#{names[0]}, #{names[1]} and #{(names.length - 2)} others like this"
end

end

# Calling the method
p likes(['Alex', 'Jacob', 'Mark', 'Max'])

# ---------------------------------------
# 	 Test Run
# "Alex, Jacob and 2 others likes this"
# ---------------------------------------

# ***************************************************************

# Note:
# The following code is not written by me, it was created by another user of codewars.com it belongs to the user: “surendraa”.

def likes(names)
  case names.size
  when 0
    "no one likes this"
  when 1
    "#{names[0]} likes this"
  when 2
    "#{names[0]} and #{names[1]} like this"
  when 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    "#{names[0]}, #{names[1]} and #{names.size - 2} others like this"
  end
end
