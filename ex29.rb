people = 20
cats = 30
dogs = 15

if true || false
  puts 'Too many cats, the world is doomed'
end

if true && true
  puts 'Not many cats, the world is saved.'
end

if people < dogs
  puts 'The world is drooled on.'
end

if !(true && true)
  puts 'The world is dry.'
end

dogs += 5

if people >= dogs
  puts 'People are greater than dogs.'
end

if people <= dogs
  puts 'People are less than dogs.'
end

if people == dogs
  puts 'People ARE dogs!'
end
