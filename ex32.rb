the_count = [5, 4, 3, 2, 1].reverse
fruits = %w[apples oranges peaches pears grapes bananas mangoes]
change = { 1 => 'pennies', 2 => 'dimes', 3 => 'quarters' }

for number in the_count 
  puts "This is count: #{number}"
end

fruits.push('strawberries')
fruits.push('raspberries')
fruits.push('watermelons')
fruits << 'kiwis'

fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

change.each { |i| puts "I've got #{i}" }

elements = []

(0..5).each do |i|
  puts "Adding #{i} to the list.."
  elements << i
end

elements.each { |i| puts "Element was: #{i}" }
