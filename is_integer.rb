test = []
10.times {test << gets.chop}
regexp =  /^[0-9]+$/
test.each do |t|
  if t.match regexp
    puts "INTEGER"
  else
    puts "NOTINTEGER"
  end
end
