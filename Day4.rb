# puts Array.methods.inspect
arr=Array.new(10){|x| x=x+1}
# puts arr.inspect
# puts arr.include? 5

#slice
puts arr[-4,8].inspect

#rotate
puts "non destructive"
puts arr.rotate(2).inspect #non-destructive
puts arr.inspect

puts "destructive"
puts arr.rotate!(2).inspect #destructive
puts arr.inspect

#rindex
puts arr.rindex(4) #return the index of element

puts arr.reduce(:/).inspect

puts "hello word".slice(1,8)