# Kermit, a frog hops in a particular way such that:
# 1. He hops 20cm in the first hop, 10cm in the second hop
#    and 5cm in the third hop.
# 2. After three hops Kermit rests for a while
#    and then again follows the same hopping pattern.
#
# Calculate the total distance travelled by
# Kermit (in centimeters) for the provided number of hops.
# Exactly 4 numbers of hops will be provided to the
# program (one number per line) as per the below example.

hops = []
4.times {hops << gets.chop.to_i}

hops.each do |hop|
  result = 0
  add = 20
  while hop>0 do
    result+=add
    add/=2
    add = 20  if add < 5
    hop-=1
  end
  puts result
end
