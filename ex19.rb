# method is [def]ined and named with two arguments or 'Parameters' sent in
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  # first two strings have string interpolation where values sent in via parameters are returned
  puts "You have #{cheese_count} cheeses."
  puts "You have #{boxes_of_crackers} boxes of crackers."
  # 2nd string returned as is
  puts 'Man, that\'s enough for a party, get a blanket (or a bucket)!'
  puts # adds a newline
end

# string describing what will happen on the next line
puts 'We can give the function numbers directly:'
# method is called and two numbers are sent into the method, corresponding with two args/parameters
cheese_and_crackers(50, 75)

# a string describes the next action below
puts 'OR we can use variables from our script:'
# two new variables are created pointing to inputs from the user
print "007> please enter first number: "
amount_of_cheese = gets.chomp.to_i
print "007> please enter second number: "
amount_of_crackers = gets.chomp.to_i

# method called with the new variables passed into the method
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# string declares the action below it
puts 'We can also "do" maths inside too:'
# method called with two arithmetic strings passed in
cheese_and_crackers(420 + 67, 750 * 30)

# fourth & final string explaining the next new variant in using the method
puts 'And we can combine the two, variables and maths:'
# both maths and variables combined separated into two parameters by a comma
cheese_and_crackers(amount_of_cheese + 1500, amount_of_crackers + 2000)
