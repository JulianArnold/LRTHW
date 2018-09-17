# # two new variables pointing to ARGV, which takes in what's passed in from the command line
# from_file, to_file = ARGV
# # string stating what we're about to do (with variables & interpolation)
# puts "We're going to copy from #{from_file} to #{to_file}."
# # new variable pointing to open() method with the output file variable in parentheses
# indata = open(from_file).read
# # new string/paragraph checking the length (in bytes) of the output file
# # next line uses File class with class method .exist? checking if output file is there
# # final line offers proceed or exit choice which $stdin.gets acts on once choice is made
# puts """
# The input file is #{indata.length} bytes long.
# Does the output file exist?  True or false.. #{File.exist?(from_file)}
# Ready press RETURN, to quit press CRTL-C
# """
# $stdin.gets
# # new variable points to open() with 2 args: input file and 'w'rite command opening up the file to write to
# out_file = open(to_file, 'w')
# # same variable which we write to 'from' the output file
# out_file.write(indata)
# # string stating we're done
# puts 'OK, all done.'
# # the file we opened AND THEN wrote to, must be closed
# out_file.close


from_file, to_file = ARGV; indata = open(from_file).read; out_file = open(to_file, 'w'); out_file.write(indata); out_file.close;
