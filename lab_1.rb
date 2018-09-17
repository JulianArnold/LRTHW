name_array1 = ['m', 'a', 'r', 'k', 'o']
name_array2 = ['j', 'o', 'h', 'n', 'o']

def vowel_counter(my_array)
	vowel_count = 0
	my_array.each do |letter|
		if(letter == 'a' or
			letter == 'e' or letter == 'i' or
			letter == 'o' or letter == 'u')
			vowel_count +=1
		end
	end
	return vowel_count
end

puts vowel_counter(name_array1)
puts vowel_counter(name_array2)


=begin

vowel_count = 0
name_array1.each do |letter|
	if(letter == 'a' or
		letter == 'e' or letter == 'i' or
		letter =='o' or letter == 'u')
		vowel_count +=1
	end
end
puts vowel_count

vowel_count2 = 0
name_array2.each do |letter|
	if(letter == 'a' or
		letter == 'e' or letter == 'i' or
		letter =='o' or letter == 'u')
		vowel_count2 +=1
	end
end
puts vowel_count2

=end