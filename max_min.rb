# Write a program which will accept an input comprising
# of 10 integers (one input per line) and will then find
# the minimum and maximum values. The program will then create
# a range using these minimum and maximum values (inclusively)
# and will repeatedly print (one per line) the character "@"
# according to the size of the range. If the range is from 4 to 9,
# the program will print "@" 6 times, one each for the
# numbers 4,5,6,7,8,9 in the range.

nums = []
10.times {nums << gets.chop.to_i}
nums[0] =  nums.max - nums.min + 1
nums[0].times {puts "@"}
