def falcon(one, two)
  puts "this #{one} goes here."
  puts "that #{two} goes there."
  puts
end

def star_wars(number, number2)
  puts "Was Episode #{number} good or bad..?"
  puts "Please enter a number out of 10: #{number2}"
  puts
end

def input
  print 'How old are you? '
  age = gets.chomp.to_i
  puts "You are #{age} years old(timer)"
  puts
end

# 1
puts 'Chewie!'
falcon('widget', 'doo-hickey')

# 2
puts 'what about these...?'
falcon('Leia', 'Luke')

# 3
puts 'and as for this scoundrel...'
lando = 1
calrissian = 2
luke = 4
leia = 5

falcon(lando, calrissian)

# 4
puts 'OR we could mix things up a little:'
falcon(lando + 1980, calrissian + 1983)

# 5
puts 'Now for no. 6 we ask this...'
star_wars(1, 2)

# 6
puts 'I will now count my friends...'
falcon(lando -= 1, luke + 300)
falcon(leia += 10, calrissian + 3)

# 7
input

# 8
age = input
print age

# 9
movie = star_wars('The Force Awakens', 'The Last Jedi')
puts movie

# 10
the_phantom_menace = 1
attack_of_the_clones = 2
revenge_of_the_sith = 3
a_new_hope = 4
the_empire_strikes_back = 5
return_of_the_jedi = 6

star_wars(the_phantom_menace - 1, 7)
star_wars(attack_of_the_clones + 2 , 8)
star_wars(revenge_of_the_sith * 17, 8)
star_wars(a_new_hope / 2, 10)
star_wars(the_empire_strikes_back % 2, 10)
star_wars(return_of_the_jedi * 50, 9)
