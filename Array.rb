# #cretetion
# arr=Array.new();
# arr2=[1,3,3,4,5,nil,nil]

# # puts arr.methods
# puts arr2
# puts arr2.methods.count
# arr.push(1)
# puts arr.size

# # omman methodes

# #remove nil in array
# puts arr2.inspect
# puts arr2.compact.inspect

# #to remove all elements in array
# puts arr.inspect
# puts arr.clear.inspect

# # unique element return 
# puts arr2.inspect
# puts arr2.uniq.inspect

# puts arr2.permutation.inspect

arr=Array.new(20){|x| x=x*2}

puts arr.inspect


# Non-destructive Selection

# arr = [1, 2, 3, 4, 5, 6]
# arr.select {|a| a > 3}       #=> [4, 5, 6]
# arr.reject {|a| a < 3}       #=> [3, 4, 5, 6]
# arr.drop_while {|a| a < 4}   #=> [4, 5, 6]
# # arr                          #=> [1, 2, 3, 4, 5, 6]

# #select
#  arr.select{|x| x>10}
# puts arr.inspect

#reject
# arr=arr.reject{|x| x<10}
# puts arr.inspect

# destructive Selection
# puts arr.inspect
# arr.select!{|x| x>9}
# puts arr.inspect


#delete_if and keep_if

# arr=Array.new(10){|x| x=x*x+x}
arr=[3,-2,4,60,0,8,7]
puts arr.inspect
# arr.delete_if{|x| x>10}
# puts arr.inspect

# arr.keep_if{|x| x>10}
# puts arr.inspect


#utility function

# puts arr.sort{|a,b| b-a}.inspect sort in decending order
# puts arr.unshift(4).inspect//add element on fist place


puts arr.last
puts arr.first
puts arr.include? 22