from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}."

indata = open(from_file).read

puts """
The input file is #{indata.length} bytes long.
Does the output file exist? #{File.exist?(to_file)}
Ready, press RETURN to continue or press CTRL-C to abort
"""
$stdin.gets

out_file = open(to_file, 'w')
out_file.write(indata)

puts 'Allright, all done!  Bye.'

out_file.close
