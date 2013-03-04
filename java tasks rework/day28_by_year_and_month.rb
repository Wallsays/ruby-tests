# Write a program which will take the year (yyyy) and
# the numeric sequence of the month (0-11) as its input.
# The program will return the day on which the 28th of
# that particular month and year falls. The input can
# consist of two year-month combinations, one combination per line.
#
# <...>
#
# Suppose the following INPUT sequence is given to the program:
#
# 1999-5
# 1998-6
#
# Then the output should be:
#
# MONDAY
# TUESDAY
date = []
2.times {date << gets.chop.split("-")}
for i in 0..1 do
  time = Time.new(date[i][0], date[i][1], 28)
  puts time.strftime("%^A")   # get Weekday
end
