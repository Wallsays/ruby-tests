# Write a program which accepts 5 input values
# (one input per line) and validates them against
# the following criteria:
#
# 1. The first and last character of the input should
# be an alphabet between A and Z (both inclusive) and
# should be in uppercase.
# 2. The input should not contain any space between characters
# 3. The input should contain at least 2 numbers
# between 0 and 9 (both inclusive). The numbers
# should be side by side.
#
# If the input passes the validation criteria, the program
# should print "OK" in uppercase, else it should
# print "ERROR" in uppercase.
#
# For example if the following 5 input values are supplied to the program:
#
# A123B
# a123B
# A1w3B
# A1 23B
# Au1uu123B
#
# Then the output of the program should be:
#
# OK
# ERROR
# ERROR
# ERROR
# OK

strings = []
5.times {strings << gets.chop}
crt1 = /^[A-Z].*\d{2}.*[A-Z]$/
crt2 = /\s/
strings.each do |str|
  if str.match crt1 and not str.match crt2
    puts "OK"
  else
    puts "ERROR"
  end
end
