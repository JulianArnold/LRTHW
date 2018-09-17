# First, let's set up the movie data.
movie = Hash.new

# "Inception"
movie['Inception'] = {'Rating' => 5, 'Genre' => 'action', 'Price' => 10.00}
# "The King's Speech"
movie['The King\'s Speech'] = {'Rating' => 4, 'Genre' => 'Drama', 'Price' => 12.00}
# can't believe you forgot this one...
movie['Dodgeball'] = {'Rating' => 5, 'Genre' => 'Comedy', 'Price' => 9.99}
# rinse and repeat...

# set up some preliminary variables
user = ARGV.first
unless user # only gets run if there's no user.
  print "What is your name? "
  user = STDIN.gets.chomp
end
prompt = "> " # deliberately left a trailing space to make it look nicer

puts "Hello #{user}, I am the customer service robot!"
puts "I'd like to ask you a few questions."
puts "Which movie would you like ? #{user}"

movie_array = Array.new
movie_array = movie.keys

# show the list of movies in the file:
puts "Choose from: " + movie_array.join(", ") + ";"
print prompt
dvd = STDIN.gets.chomp()

if movie_array.join(", ").include? dvd
puts <<CHOICE
Thank you, you have chosen #{dvd}.
Enjoy your movie.
CHOICE

  your_choice = movie[dvd]

  puts "Here is some information about your movie"
  puts
  puts dvd
  puts "=" * dvd.length
  puts
  
  # Show everything we know about your movie
  your_choice.each do |key_name, key_value|
    puts "\t#{key_name}:\t\t#{key_value}"
  end
  puts

else
  puts "Sorry, that wasn't one of the choices.  Get lost!"
end