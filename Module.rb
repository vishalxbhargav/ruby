# module Demo
#   Data=10;
#   def self.greet
#     p "hello"
#   end
#   def self.fun
#     p "Data : "
#   end
# end

# Demo.greet
# Demo.dataPrint
# p Demo::Data

# module Demo
#   C=10
#   def greet
#     p "Hiii........."
#   end
#   def fun
#     p "demo module"
#   end
# end

# class Access
#   extend Demo
#   def sum(n,m)
#     p m+n
#   end
# end

# access= Access.new()
# Access.greet
# Access.fun
# access.sum(10,30)

# Comparable in module

# class Demo
#   include Comparable;
#   attr :name
#   def <=>(other_name)
#     name.length <=> other_name.name.length 
#   def initialize(name)
#     @name=name;
#   end
# end

# d=Demo.new("12345")
# d1=Demo.new("123456")
# d2=Demo.new("1234")

# p d<d2
# p d<d1

# Ruby program to illustrate 
# comparable module 

# class StringSorter
#   include Comparable
#   attr :str
#   def <=>(other)
#     str.length<=>other.str.length
#   end
#   def initialize(str)
#     @str=str
#   end
#   def inspect
#     @str
#   end
# end

# s1=StringSorter.new("X")
# s2=StringSorter.new("YY")
# s3=StringSorter.new("ZZZ")
# s4=StringSorter.new("AAAA")
# s5=StringSorter.new("BBBBB")

# puts s1 < s2                   
# p s4.between?(s1, s3)          
# p s4.between?(s3, s5)          
# p [ s3, s2, s5, s4, s1 ].sort.inspect


# #include vs extends
# module Marvel
#   def say
#     p "Marvel moduler methode called"
#   end
# end

# class Lord
#   include Marvel
# end

# class Stark
#   extend Marvel
# end

# Lord.new.say
# Stark.say
# # Lord.say
# # Stark.new.say

# #we can use both in class extend and include
# module Print
#   def printX(x)
#     p x
#   end
# end

# class Access
#   include Print
#   extend Print
# end 

# Access.printX("using extends")
# Access.new.printX("using include")

module Demo
  def self.sayClass
    p "class methodes"
  end
  def sayInstance
    p "instance methode"
  end
end

class Access
  extend Demo
end

# Access.sayInstance
# Access.sayClass

# Access.new.sayInstance
Access.new.sayClass
