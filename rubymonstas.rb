dictionary = { one: "eins", two: "zwei", three: "drei" }

key = :one

translation = dictionary[key]

if translation
  puts "The translation for #{key} is: #{translation}."
else
  puts "The dictionary does not define a translation for the key #{key}."
end
