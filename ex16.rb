filename = ARGV.first

puts """
We're going to erase #{filename}!
Press CTRL-C (^C) if you don't want this.
Press RETURN if you do want this.
"""

$stdin.gets

puts 'Opening the file...'
target = open(filename, 'w')

puts 'I\'m now going to ask you for three lines...'

print 'Line1: '
line1 = $stdin.gets.chomp
print 'Line2: '
line2 = $stdin.gets.chomp
print 'Line3: '
line3 = $stdin.gets.chomp

puts 'I\'ll now write these to the file...'

target.write("Line1: #{line1}\nLine2: #{line2}\nLine3: #{line3}")

puts 'Now we\'ll close the file.  Thank you.'
target.close
