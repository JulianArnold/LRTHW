# write a variable pointing it to ARGV which takes in only the first argument (.first).
input_file = ARGV.first

# create a method definition, taking in one parameter which is designed to read & print what's passed in.
def print_all(f)
  puts f.read # read the thing passed in from the parameter.
end

# A new method "rewinds" the file back to its very start.  Takes in one parameter (the input file).
def rewind(f)
  f.seek(0) # .seek looks for an indexed part of the file, could use any number to place within a file.
end

# Last method take in two parameters, one determines the line item, second take in the original file.
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}" # First 'puts' preps a slot for the line item number, second 'gets' the file.
end

# We set up a new variable pointing to the 'open()' method passing in variable which points to ARGV.
current_file = File.open(input_file)

# We add some text stating what's coming next:
puts 'First, let\'s print the whole file: ' # as it says on the tin.

# We call the method by simply typing its name and adding in the variable pointing to the original file:
print_all(current_file)

# More text explaining our use of the 2nd method:
puts
puts 'Now let\'s rewind the file like a tape:  ..done'

# We call the method as before adding in the variable to the parentheses as a parameter:
rewind(current_file)

# Now we're going to print only the first three lines with a line item number for each one but first we must create
# a varible, point it to 1 and for each line following, we'll increment it upwards by one with the first line:
puts
puts 'Lastly let\'s print three lines: '
current_line = 1

# Now we'll call the third method as normal but with two arguments, first one is the line item number and the second
# is gets.chomp which reads one line at a time, chomps it at the end and with help from the += incrementer, moves on
# to each subsequent line.
print_a_line(current_line, current_file) # both parameters are equal to the first line of the text.txt file

# The second line adds 1 to the line count with 'current_line' and also 'gets' line two in the file:
current_line += 1
print_a_line(current_line, current_file) # both parameters are equal to the second line of the text.txt file

# Same again adds yet another number to our count and reads the third line in the file:
current_line += 1
print_a_line(current_line, current_file) # both parameters are equal to the third line of the text.txt file
