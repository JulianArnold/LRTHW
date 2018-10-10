def print_the_table(number_goes_here)
	table_counter = 0
	12.times do
		print number_goes_here.to_s 
		print ' x '
		print
		table_counter += number_goes_here
		print ' = '
		puts table_counter
	end
end

print 'Please choose your times tables: '
input_text = gets.chomp

input_number = input_text.to_i

print_the_table(input_number)