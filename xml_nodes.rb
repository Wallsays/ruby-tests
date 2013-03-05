# <classreport>
# <student studentid='7' marks='20'>Simon</student>
# <student studentid='2' marks='35'>Blake</student>
# <student studentid='1' marks='78'>John</student>
# <student studentid='4' marks='67'>Buddy</student>
# <student studentid='8' marks='59'>Suzanne</student>
# <student studentid='6' marks='90'>Tim</student>
# <student studentid='3' marks='11'>Dave</student>
# <student studentid='5' marks='45'>Jack</student>
# </classreport>
# The program’s output for this XML string would be :
#
# John
# Blake
# Dave
# Buddy
# Jack
# Tim
# Simon
# Suzanne

require 'rexml/document'
include REXML
doc = ""
10.times {doc+= "#{gets.chop}" }

doc = Document.new(doc)
hash = Hash.new

doc.elements.each("classreport/student") do |e|
  hash[e.attributes["studentid"]] = e.text
end
hash = hash.sort { |a, b| a[0] <=> b[0] }

hash.each {|value| puts "#{value[1]}"}
