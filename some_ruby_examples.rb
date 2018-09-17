my_formatted_text = "hello"

puts my_formatted_text.methods.sort
puts my_formatted_text.reverse
puts my_formatted_text.upcase
puts my_formatted_text.downcase
puts my_formatted_text.capitalize!
puts my_formatted_text.crypt ("sh")
puts my_formatted_text.empty?

lines = my_formatted_text.lines.to_a
# arrays are indexed at "0"
print lines [1]
print lines [5]
print lines [99]