def print_the_number(for_feck_sake)
	user_counter = 0
	for_feck_sake.times do
		user_counter += 15
		puts user_counter
	end
end

print "Please type in a number: "
user_text = gets.chomp

user_number = user_text.to_i

print_the_number(user_number)