# new variable, points to ARGV[0] which grabs the very first thing sent into it; test.txt
filename = ARGV[0]

# text offering two options: 1- CTRL-C to escape, RETURN to proceed..
puts """
We're going to erase #{filename}.
If you don't want that, press CTRL-C (^C).
If you DO want that, press RETURN.
"""

# grab the file..
$stdin.gets

# open the file: new variable points to the open() method with filename & 'w'rite instruction.
puts 'Opening the file...'
target = open(filename, 'w') # { |f| f << 'All of this will be truncated.'}

# next, we're going to ask you for some input...
puts 'I\'m now going to ask you for three lines...'

# print text lines 1-3 with your input inserted into each line
print 'Line 1: '
line1 = $stdin.gets.chomp
print 'Line 2: '
line2 = $stdin.gets.chomp
print 'Line 3: '
line3 = $stdin.gets.chomp

# put string saying you're writing these into the text file...
puts "I'm now going to write these to #{filename}"

# ...here by applying the .write method to new variable 'target'
# then inside parentheses, a string with the #{} operator, places the variable into the string (interpolation)
target.write("#{line1}\n#{line2}\n#{line3}")

# don't forget to actually close the file..
puts "...and finally we close #{filename}"
target.close

# from ex15: re-open the same file, same way as and from the top
# assign a new variable pointing to the open() method, to "only" open file, not write to it.
txt = open(filename)
# could print it but you want a new line carraige return.  Much cleaner.
puts "Now we'll write #{filename} to the terminal.."
puts
puts txt.read
# don't forget to close the file
txt.close

=begin
1- pass in the file using ARGV
2- string says what we're going to do with the file
3- $stdin.gets the file
4- we open it with a write string sent in
5- going to ask you for some input
6- line by line it's gets.chomp time
7- [string says] I'm going to now write these to the file (or create a file of none exists)
8- variable_name.write() to the file
9- [sting] says we're closing the file
10- variable_name.close the file [check the text file to see it's done]
11- new_variable = open(original_file_name)
12- [string] says we'll write the text file contents to the console
13- puts new_variable.read (returns contents to console)
14- new_variable.close and that's it
=end
