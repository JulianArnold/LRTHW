module Vienna
  def Vienna.prater
    puts "Bond brings Kara to Vienna and they stay in a nice hotel."
    puts "He meets up with Saunders in the Prater cafe around midnight picking up Kara's passport.."
    puts "Bond learns Whitaker & Koskov are sly bucks on the make."
    puts "Having left the cafe, Bond returns following an accident which was Saunders' demise."
    puts "Necros is responsible and left a 'Smiert Spionam' message on one of his balloons (disguise)"
    puts "Furious, Bond finds Kara tells her to get packed as he acknowledges he 'got the message'"
    puts "To get to Tangier, how many balloons did Necros have?"

    print "007> "
    number = $stdin.gets.chomp

    if number =~ /\d+/
      balloons = number.to_i
    else
      dead("Bond, learn to type a number!")
    end

    if balloons < 20
      puts "Well done, off to Tangier to face Koskov && Whitaker."
      Tangier.pushkins_gambit
    else
      dead("Necros gets you too!")
    end
  end
end
