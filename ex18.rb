def print_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_one(arg1)
  puts "arg1: #{arg1}"
end

def print_none()
  puts 'I got nuthin\' man!'
end

print_two('Julian', 'Arnold')
print_two_again('James', 'Bond')
print_one('007')
print_none
