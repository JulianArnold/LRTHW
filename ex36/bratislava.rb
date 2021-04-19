module Bratislava

  def Bratislava.sniper
    puts """James Bond is assigned to help KGB General Georgi Koskov defect, covering his escape from a concert hall in
    Bratislava, Czechoslovakia. During the mission, Bond notices that a 'KGB' sniper is a female cellist from the
    orchestra.  Disobeying his orders to kill the sniper, he shoots the rifle from her hands, then uses the
    Trans-Siberian Pipeline to 'smuggle' Koskov across the border to the West.  Should you 'shoot' the cellist
    or shoot the rifle out of her 'hands' (she was cute though)?  What do you do with Koskov?  Put him in the 'boot'
    of the Audi or put him in the 'pipeline'?"""
    he_shoots = false

    while true
      print "007> "
      choice = $stdin.gets.chomp
      # 1. KGB sniper was a woman
      # 2. Shoots rifle from her hands
      # 3. Smuggles Koskov through the pipeline

      if choice == "shoot"
        dead("KGB suss you out and shoot you!")
      elsif choice == "hands" && !he_shoots
        puts "Successfully shot the rifle out of the girl's hands, you can open the door to Koskov"
        he_shoots = true
      elsif choice == "hands" && he_shoots
        dead("KGB storm the shop and shoot you and Saunders")
      elsif choice == "pipeline"
        uk
      else
        puts "...you're still in the olde shoppe..."
      end
    end
  end

  def Bratislava.rescue
    puts "Bond returns to Bratislava to track down the cellist, Kara Milovy. He finds out that Koskov's entire"
    puts "defection was staged, and that Kara is actually Koskov's girlfriend. Bond convinces Kara that he is a friend"
    puts "of Koskov's and persuades her to accompany him to Vienna, supposedly to be reunited with him."
    puts "They escape Bratislava while being pursued by the KGB, crossing over the border into Austria."
    puts "Meanwhile, Pushkin meets with an arms dealer, Brad Whitaker, in Tangier, informing him that the KGB"
    puts "is cancelling an arms deal previously arranged between Koskov and Whitaker."
    puts "Where is Kara most likely to be when you arrive, at the 'Conservatoire' or at the Police 'station'?"
    puts "Kara is Koskov's Girlfriend, do you go 'home' or 'stay'?"
    puts "You offer to bring her to Vienna.  First, she must pack some warm clothes.."
    clothes = %w[jumper scarf socks gloves]
    puts ""
    puts ""


    # 20210419 OK, thoughts on how to construct this one?  Shadow the method above or, add more..?
    # Remember, this part of the film includes the ice chase.  Also check out ex19 with interpolation
    # 1. Find Kara, discover fake defection and Kara's Koskov's girlfriend.
    # 2. Pose as friend, entice her to Vienna to meet him.
    # 3. ICE CHASE!
    # 4. Pushkin meets Whitaker; cancels the $50m weapons order.

  end
end
