user_name = ARGV.first
prompt = '> '

puts "Hi #{user_name}."
puts 'I\'d like to ask you a few questions...'
puts "Do you like me #{user_name}"
print prompt
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}?"
print prompt
lives = $stdin.gets.chomp

puts 'What kind of computer do you have?'
print prompt
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} to liking me,
you live in #{lives}, don't know where that is..
and you have a #{computer}.  Nice.
"""
