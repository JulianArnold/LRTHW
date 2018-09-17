filename = ARGV[0]
txt = open(filename)
puts "Here's your file #{filename}: "
puts txt.read

print 'Please enter another file > '
file_again = $stdin.gets.chomp
txt_again = open(file_again)
print txt_again.read
