#frozen_string_literal:true
#string creation explicitly
#string literal
# strDefinde = "here is string define";
# puts strDefinde;

# #heredoc literal
# sdefine=<<HEREDOCK
#   this is string define with 
  
#   heredock litera
  
#   l
# HEREDOCK

# puts sdefine


#substitute methode
# s = "hello word"
#first and return new string
# st=s.sub(/[he]/,'H')
# s+=" new string added"
# puts st
#one substitution and return self
# st=s.sub!(/[he]/,'H')
# s+=" new string added"
# puts st

#zero or more substitute and return new string 
# st=s.gsub(/[l]/,'H')
# s+=" new string added"
# puts st
# #zero or more substitute and return self
# st=s.gsub!(/[ltd]/,'*')
# s+=" new string added"
# puts st

# substitute in hashes

# h={'foo'=>'bar','baz'=>'bat'}
# puts 'food'.sub('foo',h)

# #in hashes substitute does not work with symbols
# hs={name:'vishal',age:24}
# puts 'named'.sub('name',hs)

#whitespaces in string

#nil
# x = "\u0000"
# puts "\x00"
# puts x

# puts "\n string text"
# puts "\t string text"
# puts "\r string text"
# puts "\v string text"
# 


# #string slice
# x = "this is string text area"
# puts x[5]
# puts x[5,18]


# Creating a String
# new
# s=String.new('text');
# puts s
#try_convert
=begin
  if object is string return object
  otherwise if object responded to :to_str call to_str and return result
  return nill if object not responed to to_str
=end

# Frozen/Unfrozen Strings
=begin
frozen_string_literal is spacial type of comments it's allow all the string literal immutable 
=end

# s= 'ruby'
# s<<' on rails'
# puts s

# Querying
s= "hello word program"
# puts "ruby".object_id
# puts "ruby".object_id
# puts "hellow this is demo".length
# puts 'hellow wordk'.bytesize
# puts ''.empty?
#   #substring
# puts s.index('r')
# puts s.rindex('r')
# puts s['word']
# puts s.include? 'word'
# puts s.include? 'wordx'
# puts "food".match('u')

# puts "hiii".equal?"hiii"
# # Comparing
# puts "hkl dlkd jflk djfd".scan(/..../).inspect #converted string into pair of 4(number of dots)
# puts "hkl dlkd jf l k dj fd".scan(/\w+/).inspect

# #casing
# puts "abcd".upcase#.uppercase return new string and .uppercase! return self
# puts "ABCD".downcase
# puts "hello word program".capitalize
# puts "hello Word Program".swapcase
# p s.object_id
# s+="abc"

# p s.object_id
# p s


MY_CONSTANT = "Hello, world"
MY_CONSTANT[1] = "u"
p MY_CONSTANT





# Modifying a String

