puts "You are 007."
puts "It's 3:00am and you are standing in M's office, he has three missions to be carried out.  Which do you choose?"
puts "1. Crab Quay: Missile Toppling"
puts "2. Lektor Decoder: smuggled out by Russian Admin."
puts "3. Business Man named Goldfinger: is hoarding lots of Gold which could upset World currencies"

print "> "
mission = $stdin.gets.chomp

if mission == "1"
  puts "You are to travel to Jamaica to investigate why Station J stopped daily routine reporting."
  puts "The radio link remains open but there's silence from Jamaica despite constant requests."
  puts "The link is kept open to see how the situation develops but M doesn't like it.  You have 3 choices:"
  puts "1. Fly into Kingston, drive out to the field agent's house where the radio is."
  puts "2. Go to the British Embassy to talk to the charge d'Affair."
  puts "3. Head to the bar and order a vodka martini.  Shaken, not stirred."

  print "> "
  crab_quay = $stdin.gets.chomp

  if crab_quay == "1"
    puts "Strangways' house seems empty, there's a light on and the veranda porch door is open.  You enter..."
    puts "The radio is still on, you switch it off.  Neither Strangways nor his secretary are there.  They were seeing"
    puts "each other and they simply vanished.  There's blood on the carpet and a small cluster of hair on a chair..."
  elsif crab_quay == "2"
    puts "Charge d'Affair knows very little but refers you to Strangways friend, Quarrel.  You visit him on the beach."
    puts "Quarrel plays strange, doesn't trust you.  Pussfeller grabs you from behind, you're rescued by Felix Leiter."
  elsif crab_quay == "3"
    puts "Dr. No defeated, Honey gone back home, you're booked on the flight back home.  Enjoy the drinks"
  else
    puts "On to the next mission.  There's a lead to a Russian cypher and a Lektor... "
  end

elsif mission == "2"
  puts "Spectre Island, nightfall.  Morzeny leads other thugs through a Maze hunting a Bond lookalike.  He dies."
  puts "Revenge for Dr. No's death, Kronsteen plans to lure 007 to Turkey with a Lektor decoder."
  puts "1. You take the bait, meet the girl and Kronsteen corners you, killing you with a poisoned knife."
  puts "2. You jump on a train, avoiding Benz who you capture with Kerim Bay's help"
  puts "3. Grant gets on board the train and you discover he isn't who he says."

  print "> "
  istanbul = $stdin.gets.chomp

  if istanbul == "1"
    puts "Did you take the anti-poison serum?  No?  You die."
  elsif istanbul == "2"
    puts "Kerim dies with Benz, big sacrifice but it's the job."
  elsif istanbul == "3"
    puts "Grant isn't working for Mi6, he's a SPECTRE stooge with a gun.  Chooses incorrect wine, traps you but..."
    puts "You loosen your binders and a fight ensues..."
  else
    puts "What has gold bullion got to do with espionage..?"
  end

elsif mission == "3"
  puts "Lektor safely delivered home and Tanya is with Mi6 experts settling into her new life.  Bond is on a mission."
  puts "Travelling from Latin America, Bond meets Leiter poolside in Miami.  Bullion dealer, Auric Goldfinger cheats"
  puts "at gin rummy.  Bond finds cheating accomplice Jill Masterson.  Seduces her while keeping Goldfinger busy."
  puts "1. You wake up and find the girl painted in gold, head to toe an call Felix."
  puts "2. Go back to Mi6 and brief M who invites you to dinner with a Bank of England bullion expert."
  puts "3. Beat Goldfinger at golf making yourself a new fiend er, friend!"
  puts "4. Wake up trapped in Kentucky learning about operation 'Grand Slam' but cannot get word out."
  puts "5. This story is already long!"

  print "> "
  bullion = $stdin.gets.chomp

  if bullion == "1"
    puts "What did I drink last night?"
  elsif bullion == "2"
    puts "Gripe at the boss, collect Aston Martin DB5, go seek revenge and pick up Tilly along the way."
  elsif bullion == "3"
    puts "Break into Auric Enterprises at night, car chase with DB5, fire a North Korean out of the roof.  Tilly dead."
  elsif bullion == "4"
    puts "Grand Slam?  Poison from planes?  Jesus, where's Pussy?"
  else
    puts "Goldfinger plays his golden harp, you turn Pussy, head home."
  end

else
  puts "Colonel Jacques Bouvar, dead...?"
end
