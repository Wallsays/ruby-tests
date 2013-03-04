# Write a program that accepts 4 words as input (one per line)
# and identifies whether they are palindromes. A palindrome is
# a word that reads the same when read back to front. The program
# should print the alphabetically sorted list of
# palindromes (one per line). The program output should be in lowercase.
#
# If the following input is given to the program:
#
# waas
# gaag
# haaha
# ABBA
#
# Then the output of program should be:
#
# abba
# gaag

strings = []
4.times {strings << gets.chop}
result = []
strings.each { |str| result << str.downcase if str == str.reverse}
puts result.sort
