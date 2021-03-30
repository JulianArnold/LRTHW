require "./afghanistan.rb"
require "./bratislava.rb"
require "./gibraltar.rb"
require "./tangier.rb"
require "./vienna.rb"

# def two_weeks_leave
# Blayden safe house?

def q_branch
  puts "You arrive into Q Branch and Q bops his head as he exits the Aston Martin, 'mind your head!' you wryly say. "
  puts "'Ah, 007 we're just winterizing this' [as the technicians gingerly lower the metal roof]"
  puts "Q shows you the explosive key-ring finder and the Ghetto-blaster [portable stereo disguises an RPG]"
  puts "Moneypenny beckons; you walk into the glass computer room and you watch the scrolling bios of known killers"
  puts "Looking like a dead-end and following the ghetto-blaster demo, Moneypenny says M wants you at Blayden"
  puts "Stopping at Harrods, you peek inside the hamper and you see 'questionable' brands of food & booze"
  puts "Remember, enter your name at the >prompt< before changing the contents of the hamper..."
  puts ""

  print "007> Please enter your name: "
  user_name = $stdin.gets.chomp
  print "007> "

  puts "Welcome to Harrods #{user_name}"
  puts "We offer many types of food, beverage and tobacco in each of our hampers."
  puts "Firstly #{user_name}, what food would you like to see?"
  print "007> "
  food_name = $stdin.gets.chomp
  food = []

  food_name.tap do |f|
    puts "adding #{f} to the hamper"
    food.push(f)
  end
  # here you can use ex32 & ex14 as guides..

  print "007> "

  puts "Next #{user_name}, we add a beverage.  What would like to add?"
  print "007> "
  drink_name = $stdin.gets.chomp
  drink = []

  drink_name.tap do |d|
    puts "adding #{d} to the hamper"
    drink.push(d)
  end

  print "007> "

  puts "Finally #{user_name}, we'll add some tobacco.  What would like to include?"
  print "007> "
  tobacco_name = $stdin.gets.chomp
  tobacco = []

  tobacco_name.tap do |t|
    puts "adding #{t} to the hamper"
    tobacco.push(t)
  end
  # stopped here on 20210330
end

def uk
  puts "You have a quick chat with M"
  puts "He offered you two choices"
  puts "1. Go back to London, pick up the Aston from Q"
  puts "2. Stay on the plane"

  print "007> "
  choice = $stdin.gets.chomp

  if choice == "1"
    q_branch # write a new method for Q branch above
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
