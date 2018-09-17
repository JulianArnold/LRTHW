people = 5
cars = 90
buses = 50

if cars > people
	puts "We should take the cars."
elsif cars < people
	puts "We should not take the cars."
else
	puts "We can't decide."
end

if buses > cars
elsif buses < cars
	puts "Maybe we should take the buses."
else
	puts "We still can't decide."
end

if people > buses
	puts "Alright, let's just take the buses."
else
	puts "Fine, let's stay home then."
end

if cars > people and buses < cars
	puts "My head is about to explode!"
elsif cars > people or buses < cars
	puts "No-one mentioned the scooter..?"
else
	puts "I'm taking my skateboard!"
end