#creation of hash it's key value pair data structure
# ##this is older verison to use hash
# h={:a=>1,:b=>2,:c=>3} 
# #new json style 
# hs={name:"xyz",type:'w'}
# puts h
# puts h[:a] #get value of key
# puts h[:d]=4 #add new key value pair

# #fetch function block run when key not found in hash otherwise return value of key
# h.fetch(:d){|key| puts "no such value : #{key}"}


#initialize object via hash
# class Demo
#   attr_accessor :name, :lang
#   def initialize(hash)
#     self.name=hash[:name]
#     self.lang=hash[:lang]
#   end
# end
# d=Demo.new(name:'zyw',lang:'hi')
# puts d.name

# Entry Order
# each entry in hash present it's entry of creation

# iterate over the  hash
h={a:1,b:2,c:3,d:4,e:5,f:6}
h.default=200
# each
# # h.each{|pair| puts pair}
# #each_key
# h.each_key{|key| puts key}
# #each_pair
# h.each_pair{|key,value| puts "#{key} : #{value}"}
# #each_value
# h.each_value{|value| puts value}
# puts h[:z]

color = {   
  "Rose" => "red",   
  "Lily" => "purple",   
  "Marigold" => "yellow",   
  "Jasmine" => "white"   
}   
color['Tulip'] = "pink"   
color.each do |key, value|   
puts "#{key} color is #{value}"   
end  
