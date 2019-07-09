formatter = "%{first} %{second} %{third} %{fourth}"

puts formatter % { first: 1, second: 2, third: 3, fourth: 4 }
puts formatter % { first: 'one', second: 'two', third: 'three', fourth: 'four' }
puts formatter % { first: true, second: false, third: true, fourth: false }
puts formatter % { first: formatter, second: formatter, third: formatter, fourth: formatter }

puts formatter % {
    first: 'I had this thing',
    second: 'that you could type up right',
    third: 'but it didn\'t sing',
    fourth: 'so I said goodnight.'
}


# https://stackoverflow.com/questions/28556946/percent-operator-string-interpolation