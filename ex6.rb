# here is a list of variables being declared with some strings containing interpolation("")
types_of_people = 10
x = "There are #{types_of_people} types of people" #(1)
binary = 'binary'
do_not = 'don\'t'
# below you'll find strings within strings
y = "Those who know #{binary} and those who #{do_not}" #(2)

# here we fire them off
# below you'll find strings within strings
puts x
puts y

# and below once more you'll find strings within strings (x and y point to strings containing strings)
puts "I said #{x}"
puts "I also said #{y}"

# a new variable pointing to a false boolean
hilarious = false
joke_evaluation = "Isn't that joke so funny? #{hilarious}" #(3)

# here we run the program and then you can see the answer to it display as false
# below you'll find a string within a string
puts joke_evaluation

# two new variables showing the concatentation of two variables (using the + sign) on a single line
w = 'This is the left side of... '
e = 'a string with a right side.'

# here the program is run
puts w + e
