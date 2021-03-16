module Gibraltar

  def Gibraltar.impostor
    puts "An impostor infiltrates a Secret Service training exercise in Gibraltar to assassinate the agents participating."
    puts "004, one of the agents, attempts to climb the Rock of Gibraltar via grappling hook."
    puts "What do you think the impostor will do next? Shoot 004 or cut his climbing wire?"

    print "007> "
    choice = $stdin.gets.chomp.downcase

    if choice.include? "shoot"
      exit(0)
    elsif choice.include? "wire"
      Gibraltar.smiert_spionam
    else
      dead("...without the paper tag, you have no leads to Pushkin")
    end

  end

  def Gibraltar.smiert_spionam
    puts "The impostor finds 004 while climbing, and attaches a tag reading 'Smiert Spionam'"
    puts "to the grapple wire, and cuts the wire, killing 004."
    puts "While making his escape in a Land Rover full of explosives, the impostor is intercepted by James Bond."
    puts "What happens next?  Does Bond jump on to the roof of the Land Rover or fall off?"

    print "007> "
    choice = $stdin.gets.chomp.downcase

    if choice.include?("jump") || choice.include?("roof")
      Gibraltar.rock_chase
    elsif choice.include? "fall"
      dead("...you fell off the Land Rover 007?")
    else
      start
    end
  end

  def Gibraltar.rock_chase
    puts "The impostor is killed when the explosives blow up as he plummets from the Rock of Gibraltar."
    puts "Bond escapes using a parachute, and is able to land safely onto a nearby ship."
    puts "There is a beautiful woman sipping champagne whilst on the phone..  she offers you a glass"
    puts "Do you take the phone or the glass of champagne?"

    print "007> "
    choice = $stdin.gets.chomp.downcase

    if choice.include?("glass") || choice.include?("champagne")
      uk
    elsif choice.include? "phone"
      Bratislava.sniper
    else
      dead("Not a good choice 007")
    end
  end



end
