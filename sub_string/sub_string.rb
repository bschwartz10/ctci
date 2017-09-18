# Assume you have a method isSubstring which checks if
# one word is a substring of another. Given two strings,
# s1 and s2, write code to check if s2 is
# a rotation of si using only one call to isSubstring
# (e.g.,"waterbottle"is a rotation of "terwa", "lebott")

# get length of string_1
# loop over string_1 the amount of length times - 1
# take index[-1] and move it to the front of the string
# check to see if string_1 == string_2
  # if they match return true
  # else continue the loop
# if loop ends return false


class SubString
  def self.rotate(string_1, string_2)
    loops = string_2.length - 1
    mutated_string = string_2
    
    loops.times do
      last_char = mutated_string[-1]
      mutated_string = mutated_string.chop
      mutated_string.prepend(last_char)
      return true if string_1 == mutated_string
    end
    false
  end



end
