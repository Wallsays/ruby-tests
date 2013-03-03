# Suppose the following input is given to the p
# rogram, where each line represents a different event:
#
# 1001,1002,1003,1004,1005
# 1106,1008,1005,1003,1016,1017,1112
#
# Now the common employee ids are 1003 and 1005,
# so the program should give the output as:
ev1 = gets.chop.split(",")
ev2 = gets.chop.split(",")
ev3 = ev1-ev2
puts ev1.length - ev3.length
