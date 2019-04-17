# reps: 10

def add(a, b)
  puts "ADDING #{a} + #{b}"
  a + b
end

def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  a / b
end

puts 'Let\'s do some maths with functions:'

age = add(25, 26)
height = subtract(113, 300)
weight = multiply(112, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}."

puts 'Here is the famous puzzle:'

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes #{what}.  Can you do it by hand?"
