# Write a program which will accept two rows of integers separated
# by commas. The program should count the occurrence of every digit
# from the first row in the second row. The program should print the
# corresponding digit along with the count of how many times it
# appears in the second row separated by a hyphen (one output per line).
#
# For example, let us suppose the following two string inputs are
# supplied to the program:
#
# 1,2,3,4,5,6,7,8,9
# 1,2,3,3,4,4,5,5,6,6,6,7,7,7,7,8,8,8,8,8,9,9,9,9,9,9,9,9,9,9
#
# Then the output of the program should be:
#
# 1-1 (as 1 only appears once)
# 2-1 (as 2 only appears once)
# 3-2 (as 3 appears twice)
# 4-2
# 5-2
# 6-3
# 7-4
# 8-5
# 9-10

inputs = []
res = Hash.new
2.times {inputs << gets.chop.split(",")}
inputs[0].each_with_index do |num, index|
  cnt = 0
  num = num.to_i
  inputs[1].each {|d| cnt+=1 if num == d.to_i }
  res[index+1] = cnt
end
res.each_pair {|key,value| puts "#{key}-#{value}"}
