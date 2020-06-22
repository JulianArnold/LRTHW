puts "You enter a dark room with four doors.  Please choose one and go through.."

print "> "
door = $stdin.gets.chomp

if door == "1"
  puts "There's a giant bear here eating cheese cake.  What do you do?"
  puts "1. Take the cake."
  puts "2. Scream at the bear."

  print "> "
  bear = $stdin.gets.chomp

  if bear == "1"
    puts "The bear eats your FACE off.  Good job."
  elsif bear == "2"
    puts "The bear eats your LEGS off.  Good job."
  else
    puts "Well, %s is probably better.  Bear runs away." % bear
  end

elsif door == "2"
  puts "You stare into the endless abyss of Cthulhu's retina."
  puts "1. Blueberries."
  puts "2. Yellow jacket clothespins."
  puts "3. Understanding revolvers yelling melodies."

  print "> "
  insanity = $stdin.gets.chomp

  if insanity == "1" || insanity == "2"
    puts "Your body survives powered by a mind of jello.  Good job."
  else
    puts "The insanity rots your eyes into a pool of muck.  Good job."
  end

elsif door == "3"
  puts "You find James Bond sitting in your BMW."
  puts "1. You're in the wrong car 007."
  puts "2. Ms. Moneypenny mislaid her pearls."
  puts "3. M has left his pipe in the boot."

  print "> "
  q_branch = $stdin.gets.chomp

  if q_branch == "1"
    puts "Now pay attention 007"
  elsif q_branch == "2"
    puts "Really James!  You've never HAD me!"
  else
    puts "Don't ask, don't tell."
  end

elsif door == "4"
  puts "You come home and Mark King is playing your bass."
  puts "1. Er, hello?  Do you like my bass?"
  puts "2. Once more with Mike in action."

  print "> "
  level_42 = $stdin.gets.chomp

  if level_42 == "1"
    puts "JDs are easier to tune."
  elsif level_42 == "2"
    puts "Is that the Chinese Way?"
  else
    puts "Now I'm just Standing in the light."
  end

else
  puts "You stumble around and fall on a knife and die.  Not such a good job."
end
