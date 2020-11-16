puts 'While loop'
puts ''

def while_loop(param1, param2)
  i = 0
  numbers = []

  while i < param1
    puts "At the top, i is #{i}"
    numbers << i
    i += param2
    puts "Numbers now: ", numbers
    puts "At the bottom, i is #{i}"
  end
  puts "The FINAL numbers: "
  numbers.each { |num| puts num }
end

while_loop(5, 1)

puts ''
puts 'Range loop with .each'
puts ''

def range_loop1
  numbers = []

  (0..5).each do |i|
    puts "At the top, i is #{i}"
    numbers << i
    puts "Numbers now: ", numbers
    puts "At the bottom, i is #{i}"
  end
  puts "The FINAL numbers: "
  numbers.each { |num| puts num }
end

range_loop1

puts ''
puts 'Range loop with .step()'
puts ''

def range_loop2
  numbers = []

  0.step(5, 1) do |i|
    puts "At the top, i is #{i}"
    numbers << i
    puts "Numbers now: ", numbers
    puts "At the bottom, i is #{i}"
  end
  puts "The FINAL numbers: "
  numbers.each { |num| puts num }
end

range_loop2
puts 'The End'
