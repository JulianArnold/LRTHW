def uk
  dead("crashed the Aston")
end

def gibraltar
  puts "You decided to stay on the plane"
  puts "M is undecided as an important mission has come up in Istanbul"
  puts "You may change your mind and ask the pilot to circle around over Gibraltar"
  puts "Do you return to the exercise or go back to London?"

  print "007> "
  choice = $stdin.gets.chomp

  if choice.include? "return"
    start
  elsif choice.include? "london"
    uk
  end
end

def dead(why)
  puts why, "Good work 007, happy retirement."
  exit(0)
end

def start
  puts "Good morning 007..  you are on a plane with other 00s"
  puts "M is here and he's just briefed you on the exercise"
  puts "The plane is just about over Gibraltar, your drop zone"
  puts "Exercise is to 'infiltrate' the Rock and the British Army are expecting you"
  puts "You and the other 00s move toward the back of the plane, the others jump out"
  puts "Do you jump or do you stay?"

  print "007> "
  choice = $stdin.gets.chomp

  if choice == "jump"

  else
    dead("Parachute fails! ")
  end
end

start
