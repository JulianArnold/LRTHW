animals = ['bear', 'ruby', 'peacock', 'kangaroo', 'whale', 'platypus']
ordinal = %w(1st 2nd 3rd 4th 5th 6th)

# Test sentence:
# "The first (1st) animal is at 0 and is a bear." Then say it backwards: "The animal at 0 is the 1st animal and is a bear."

#1 The animal at 1
puts "The animal at #{animals.index('ruby')} is the #{ordinal[1]} animal and is a #{animals[1]}."
puts "The second (#{ordinal[1]}) animal is at #{animals.index('ruby')} and is a #{animals[1]}."
puts '--'

#2 The third (3rd) animal
puts "The third (#{ordinal[2]}) animal is at #{animals.index('peacock')} and is a #{animals[2]}."
puts "The animal at #{animals.index('peacock')} is the #{ordinal[2]} animal and is a #{animals[2]}."
puts '--'

#3 The first (1st) animal
puts "The first (#{ordinal[0]}) animal is at #{animals.index('bear')} and is a #{animals[0]}."
puts "The animal at #{animals.index('bear')} is the #{ordinal[0]} animal and is a #{animals[0]}."
puts '--'

#4 The animal at 3
puts "The animal at #{animals.index('kangaroo')} is the #{ordinal[2]} animal and is a #{animals[3]}."
puts "The third (#{ordinal[2]}) animal is at #{animals.index('kangaroo')} and is a #{animals[3]}."
puts "--"

#5 The fifth (5th) animal
puts "The fifth (#{ordinal[4]}) animal is at #{animals.index('whale')} and is a #{animals[4]}."
puts "The animal at #{animals.index('whale')} is the #{ordinal[4]} animal and is a #{animals[4]}."
puts '--'

#6 The animal at 2
puts "The animal at #{animals.index('peacock')} is the #{ordinal[1]} animal and is a #{animals[2]}."
puts "The second (#{ordinal[1]}) animal is at #{animals.index('peacock')} and is a #{animals[2]}."
puts '--'

#7 The sixth (6th) animal
puts "The sixth (#{ordinal[5]}) animal is at #{animals.index('platypus')} and is a #{animals[5]}."
puts "The animal at #{animals.index('platypus')} is the #{ordinal[5]} and is a #{animals[5]}."
puts '--'

#8 The animal at 4
puts "The animal at #{animals.index('kangaroo')} is the #{ordinal[3]} and is a #{animals[3]}."
puts "The fourth (#{ordinal[3]}) animal is at #{animals.index('kangaroo')} and is a #{animals[3]}."
puts '--'

puts '=== function follows below ==='

def check_place(ordinal)
  animals = ['bear', 'ruby', 'peacock', 'kangaroo', 'whale', 'platypus']
  if ordinal >= 1 && ordinal <= animals.length
    puts "The ##{ordinal} animal is a %s and is at index #{ordinal-1}." % animals[ordinal-1]
  else
    puts 'Invalid number, please try again.'
  end
end

check_place(1)
check_place(2)
check_place(3)
check_place(4)
check_place(5)
check_place(6)
check_place(7)





# def check_place(ordinal)
#   animals = ['bear', 'ruby', 'peacock', 'kangaroo', 'whale', 'platypus']
#   if ordinal >= 1 && ordinal <= animals.length
#     puts "The ##{ordinal} animal is %s and is at #{ordinal-1}." % animals[ordinal-1]
#   else
#     puts "Invalid Entry, please try again"
#   end
# end
#
# check_place(1)
# check_place(2)
# check_place(3)
# check_place(4)
# check_place(5)
# check_place(6)
# check_place(7)
