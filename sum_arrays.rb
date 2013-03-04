# Write a program which will print the sum of parallel
# numbers in two input strings (one input string per line).
# The numbers in each string will be separated by commas.
# The program will print the individual parallel sum of numbers
# in a line, separated by commas.
#
# If the following two strings are supplied as inputs to the program:
#
# 1,2,3,4,5,6,7,8,9
# 1,1,1,1,1,1,1,1,1
#
# then the program should print the output as follows:
#
# 2,3,4,5,6,7,8,9,10

inputs = []
cnt = 0
2.times {inputs << gets.chop.split(",")}
inputs[0].zip(inputs[1]).each do |a, b|
  inputs[0][cnt] = a.to_i + b.to_i
  cnt+=1
end
puts inputs[0].join(",")
