# Write a program that prints the numbers between 258 and 393
# (both inclusive) which do not end with 5. The program should
# print the output so as to have one value per line. The output
# would therefore follow the below format:

for i in 258..394
  puts i if i % 10 != 5
end
