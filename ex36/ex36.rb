require "./afghanistan.rb"
require "./bratislava.rb"
require "./gibraltar.rb"
require "./tangier.rb"
require "./vienna.rb"

# def q_branch
# def two_weeks_leave

def uk
  puts "You have a quick chat with M"
  puts "He offered you two choices"
  puts "1. Go back to London, pick up the Aston from Q"
  puts "2. Stay on the plane"

  print "007> "
  choice = $stdin.gets.chomp

  if choice == "1"
    start # write a new method for Q branch above
  elsif choice == "2"
    dead("Fly back to London, visit Q and pick up the Aston")
  else
    uk
  end
end

def gibraltar
  puts "You decided to stay on the plane"
  puts "M is undecided as an important mission has come up in Istanbul"
  puts "You may change your mind and ask the pilot to circle around over Gibraltar"
  puts "Do you return to the exercise or go back to London?"

  print "007> "
  choice = $stdin.gets.chomp.downcase

  if choice.include?("mission") || choice.include?("istanbul")
    start
  elsif choice.include? "return"
    Gibraltar.impostor
  elsif choice.include? "london"
    uk
  else
    dead("...if you wait too long, 008 replaces you...")
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
  choice = $stdin.gets.chomp.downcase

  if choice == "jump"
    gibraltar
  elsif choice == "stay"
    uk
  else
    dead("Parachute fails! ")
  end
end

start
