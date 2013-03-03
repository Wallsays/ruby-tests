# Write a program to calculate the distance travelled
# by a car at different time intervals.
# The initial velocity of the car is 36 km/hr
# and the constant acceleration is 5 m/s2.

t1 = gets.chop.to_i
t2 = gets.chop.to_i
v = 10
a = 5
puts "#{v * t1 + ((a * t1) / 2) * t1}"
puts "#{v * t2 + ((a * t2) / 2) * t2}"
