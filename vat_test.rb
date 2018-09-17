# ja.rb

def add_vat(ex_vat_amount, vat_rate)
	return ex_vat_amount * ((100+vat_rate.to_f)/100)
end

print "Give me an Ex VAT amount:"

ex_vat = STDIN.gets.chomp

print "The VAT inclusive amount for #{ex_vat} is: "

puts add_vat(ex_vat.to_f, 23)