people = 300
cars = 40
trucks = 15

if cars > people
  puts "We should take the cars."
elsif cars < people and trucks == 1000
  puts "We shouldn't take the cars."
else
  puts "We can't decide."
end

if trucks > cars
  puts "That's too many trucks!"
elsif trucks < cars || cars != 40
  puts "Maybe we could take the trucks..?"
else
  puts "We still can't decide.."
end

if people > trucks && people < trucks
  puts "Alright, let's just take the trucks."
else
  puts "Fine, let's just stay at home then.."
end
