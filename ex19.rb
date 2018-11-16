def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses."
  puts "You have #{boxes_of_crackers} boxes of crackers."
  puts 'Man, that\'s enough for a party!'
  puts 'Get a blanket!'
  puts
end

puts 'We can just give the numbers directly:'
cheese_and_crackers(77, 99)

puts 'OR we can use variables directly from our script:'
amount_of_cheese = 200
amount_of_crackers = 500

cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts 'We can also add maths internally too:'
cheese_and_crackers(20 + 30, 50 + 70)

puts 'And we can combine the two too:'
cheese_and_crackers(amount_of_cheese + 200, amount_of_crackers + 700)
