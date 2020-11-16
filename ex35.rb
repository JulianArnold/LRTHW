def gold_room
  puts "There is a room full of gold, how much do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice =~ /\d+/
    how_much = choice.to_i
  else
    dead("Man, learn to type a number!")
  end

  if how_much < 50
    puts "Nice, you're not greedy.  You win!"
    exit(0)
  else
    dead("Now, that's just greedy!")
  end
end

def bear_room
  puts "There is a bear here!"
  puts "He has a pot of honey.."
  puts "The plump bear is in front of another door.."
  puts "How will you move the bear?"
  bear_moved = false

  while true
    print "> "
    choice = $stdin.gets.chomp

    if choice == "take honey"
      dead("The bear looks at you then slaps your face off!")
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear has moved and you can go through the door..."
      bear_moved = true
    elsif choice == "taunt bear" && bear_moved
      dead("The bear gets pissed off and chews off your leg!")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I've no idea what that means, please try again"
    end
  end
end

def cthulhu_room
  puts "Here you see the great evil Cthulhu.."
  puts "He, She, whatever stares at you and you go insane!"
  puts "Do you flee for your life or eat your head?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("Well, that was tasty!")
  else
    cthulhu_room
  end
end

def dead(why)
  puts why, "Good job!"
  exit(0)
end

def start
  puts "You are in a dark room.."
  puts "There is a door to your left and to your right.."
  puts "Which one do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulhu_room
  else
    dead("You stumble around the room until you starve..")
  end
end

start
