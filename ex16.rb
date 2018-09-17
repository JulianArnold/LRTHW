filename = ARGV[0]

puts """
We're going to erase #{filename}.
Press CTRL-C (^C) if you don't want this.
Press RETURN if you do..
"""

$stdin.gets

puts 'We\'re now going to open the file...'
target = open(filename, 'w')

puts 'I\'m now going to ask you to write 3 lines of text:'

print 'Line 1: '
line1 = $stdin.gets.chomp
print 'Line 2: '
line2 = $stdin.gets.chomp
print 'Line 3: '
line3 = $stdin.gets.chomp

puts "I'm now going to write these to #{filename}."

target.write("#{line1}\n#{line2}\n#{line3}")

puts "Now we will close #{filename}."
target.close

puts "We'll re-open #{filename}"
txt = open(filename)
puts '..now to post it here in the console right below this line:'
puts txt.read
puts "now to close #{filename}."
sleep(1)
txt.close
puts 'bye-bye!'
