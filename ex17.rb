from_file, to_file = ARGV

puts "Copying from file #{from_file} to file #{to_file}..."

indata = open(from_file).read

puts """
The input file is #{indata.length} bytes in size.
Does the target or output file exist? #{File.exist?(to_file)}
Ready, press RETURN to continue or CTRL-C for the escape pod...
"""
$stdin.gets

outdata = open(to_file, 'w')
outdata.write(indata)

puts 'OK, all done...'
outdata.close
puts
