puts('hello '. + 'world')
puts((10.*9).+ 9)
puts self
var1 = 'stop'
var2 = 'deliver repaid desserts'
var3 = '....TCELES B HSUP A magic spell'
puts ''
puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3
puts ''
puts 'What is your first name?'
name1 = gets.chomp
puts ''
puts 'Did you know there are '+name1.length.to_s+ ' characters'
puts 'in your first name, ' +name1+'?'
puts 'What is your middle name?'
name2 = gets.chomp
puts ''
puts 'there are '+name2.length.to_s+ ' characters'
puts 'in your middle name, ' +name1+'.'
puts 'So, '+name1+' please tell us your last name'
name3 = gets.chomp
puts ''
puts 'There are '+name3.length.to_s+ ' characters'
puts 'in your last name '+name1+'.'
puts ''
puts 'So, if we add them altogther, we end up with...'
puts name1.length.to_i + name2.length.to_i + name3.length.to_i