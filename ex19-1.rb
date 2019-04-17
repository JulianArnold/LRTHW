def car_type(make, model, engine)
  puts "Your car make is: #{make}."
  puts "The model you drive is: #{model}."
  puts "It has a #{engine} litre engine."
  puts 'Man, that\'s a slow rid-er!'
  puts
end

#1
puts 'This is Julian\'s car:'
car_type('Audi', 'A4', 1.8)

#2
puts 'And this is Ger\'s car:'
car_type('negawskloV'.reverse, 'gOLF'.capitalize, 1600.to_f)

#3
puts 'This is Grushenka\'s car; the Beemer of course:'
car_type('bmw'.upcase, 300 + 16, 1000 - 998.4)

#4
puts 'My Dad has had a few cars:'
car_type(%w[Toyota VW Nissan], %w[Avensis Vento Primera], %w[2.0 1.9 2.1])

#5
puts 'SOME PEOPLE LIKE TO SHOUT ABOUT THEIR CARS!!'
car_type('BENTLEY'.downcase, 'CONTINENTAL GT'.downcase, 6.0)

#6
puts 'Some car names are just too darn long too!'
car_type('Koenigsegg'.slice(0..5), 'Regera'.inspect, 6.0000000)

#7
print 'Please enter your car: '
make = gets.chomp.to_s
print 'Please enter the model: '
model = gets.chomp.to_s
print 'And finally, the engine size in digits: '
engine = gets.chomp.to_f
puts
car_type(make.capitalize, model.capitalize, engine)

#8
puts 'We can add an apend-age to each item in the list:'
car_type(make.capitalize + 'age', model.capitalize + 'age', engine + 0.0007)

#9
puts 'Let\'s try sending in a key-value pair, a Hash!'

my_car = {
  make: 'Porsche',
  model: 'Carrera GTS',
  engine: '3.0'
}
car_type(my_car[:make], my_car[:model], my_car[:engine])

#10
puts 'Finally, let\'s convert the previous hash into an array:'

carray = my_car.values
car_type(carray[0], carray[1], carray[2])
