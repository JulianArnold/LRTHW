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
  puts "The final numbers: "
  numbers.each { |num| puts num}
end

while_loop(5, 1)
