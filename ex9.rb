# declaring two new variables, one for the days of the week, 2nd for months w/each on a new line (\n).
days = 'Mon Tues Wed Thurs Fri Sat Sun'
months = "\nJan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug\nSep\nOct\nNov\nDec"

# put string prints/displays the string with interpolation placing the variable above into the string.
puts "These are the days: #{days}"
puts "These the months: #{months}"

# similar idea with the %q delimiter which allows for using quotes and other chars without 'escaping' them (\).
puts %q{
  There's something going on here.
  With this weird "quote".
  We'll be able to type as much as we like,
  even 4 lines if we want, or five or 'six'.
  }
