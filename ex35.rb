def gold_room
  puts "This room is full of gold, how much will you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice =~ /\d+/
    how_much = choice.to_i
  else
    dead("Man, learn to type a number!")
  end

  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    exit(0)
  else
    dead("Now, that's just greedy!")
  end
end

def bear_room
  puts "There is a bear here!"
  puts "He has a large pot of honey.."
  puts "This large bear is also in front of a door.."
  puts "How will you get him to move?"
  bear_moved = false # variable points to false

  while true
    print "> "
    choice = $stdin.gets.chomp

    if choice == "take honey"
      dead("The bear looks at you then slaps your face off!")
    elsif choice == "taunt bear" && !bear_moved # variable == true
      puts "The bear moved, you can go through now.."
      bear_moved = true # weirdly it completely resets from 0 if you use a different variable pointing to true
    elsif choice == "taunt bear" && bear_moved
      dead("The bear gets pissed off and chews your leg off..")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I've no idea what that means.."
    end
  end
end

def cthulhu_room
  puts "Here you see the great evil Cthulhu!"
  puts "He, it or whatever stares at you and you go insane!"
  puts "Do you flee for your life or eat your own head?"

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
  puts "Hello.  You are in a dark room.."
  puts "There is a door to your left and one to your right.."
  puts "Which one do you take..?"

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
