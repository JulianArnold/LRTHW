puts "Let's practice everything."
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

poem = <<LEVEL_42
\tWORLD MACHINE
Some folks try to multiply
from sunrise \n\tto sunset
to leave behind\nmost of their kind
so no-one\n\t...will forget
LEVEL_42

puts '-' * 42
puts poem
puts '-' * 42

five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

def secret_formula(start)
  jelly_beans = start* 50
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates
end

start_point = 10_000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} and #{crates} crates."

start_point /= 10

puts 'We can also do it this way...'
puts "We'd have %s beans, %d jars and %d crates." % secret_formula(start_point)
