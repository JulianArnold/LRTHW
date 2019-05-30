# # reps: 10

def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b
end

def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  return a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  return a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  return a / b
end

puts 'Let\'s do some maths with functions:'

age = add(25, 26)
height = subtract(-20, 10)
weight = multiply(10, 1)
iq = divide(12, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}."

puts 'Here is the famous puzzle:'

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes #{what}.  Can you do it by hand?  Let's see then.."

# PEMDAS (parentheses, exponents, multiplication, division, addition and subtraction)

actual = -30 - (6 / 2) * 10 + 51
puts "Here is the actual maths formula: #{actual}"
