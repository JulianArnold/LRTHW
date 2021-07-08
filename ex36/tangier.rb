module Tangier
  def Tangier.pushkins_gambit
    puts "Bond and Kara arrive in Tangier and Bond sets out tracking Leonid Pushkin immediately."
    puts "snaring Pushkin in hotel room Bond confronts him on Smiert Spionam which LP denies"
    puts "revealing Koskov is evading arrest for embezzlement, LP and Bond hatch a cunning plan"
    puts "Faking LP's assassination, Koskov & Whitaker proceed with their own plan.."
    puts "What type of car is Bond driving in Tangier following LP?"

    print "007> "
    choice = $stdin.gets.chomp

    if choice.include?("audi") || choice.include?("avant")
      Tangier.karas_error
    elsif choice.include?("aston") && choice.include?("martin")
      dead("maybe you should get a bus-pass..")
    else
      start
    end
  end

  def Tangier.karas_error
    puts "Kara cocks things up a little by contacting Koskov who tells her JB is a KGB spy. "
    puts "Persuaded to drug Bond, he along with Kara is captured by Koskov and Co."
    puts "smuggled on to a C-130 as Jerzy Bondov..."
    puts "How many people are present in Brad Whitaker's compound?"

    whitakers_lair = (2..7).to_a
    print "> "
    people = $stdin.gets.chomp.to_i

    if people == 1

    end

    # 20210706: ex31 & ex33 may hold some answers.  A .each then a loop


  end
end


# 20210529: might save the likes of ex30 & inserting a range operator into Afghanistan