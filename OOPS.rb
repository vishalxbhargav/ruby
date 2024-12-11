# #class
# class Demo
# end

# #object
# d=Demo.new()

# #inheritance
# class Person
#   attr_accessor :name,:age
#   def initialize(name,age)
#     self.name=name
#     self.age=age
#   end
# end
# class Student < Person
#   def initialize(name,age)
#     super(name,age)
#   end
#   def greet()
#     p "hii,..."
#   end
# end

# student =Student.new("xyz",-1);
# student.greet

# #types of methodes 

# #class methodes && instance methode 
# #class methode access by only class name and instance methode access by only object
# class Temp
#   def self.variable
#     "this class methode"
#   end
#   def instace
#     "this is instance methode"
#   end
# end

# t=Temp.new()
# p Temp.variable
# p t.instace

# #methode overriding
# class Parent
#   def greet
#     "not overrided methode"
#   end
# end

# class Child<Parent
#   def greet
#     "Overrided methode"
#   end
# end

# c=Child.new()
# p c.greet


# #methode scop
# class ScopOfClass
#   attr_accessor :name
#   public def greet
#     "public class"
#   end
#   public def classAcces
#     only_for_class
#   end
#   private def only_for_class
#     "class spacific class"
#   end
# end

# s=ScopOfClass.new()
# p s.classAcces

# #frozen object
# class Addition
#   attr_accessor :x,:y
#   def initialize(x,y)
#     self.x=x
#     self.y=y
#   end
# end
# add = Addition.new(10,30);
# add.freeze

# if( add.frozen? )
#   puts "Addition object is frozen object"
# else
#   puts "Addition object is normal object"
# end
# add.x=20
# add.y=50

#polymorphism
# #using inheritance
# class Vehicle
#   def tyreType()
#     puts "heavy cars"
#   end
# end

# class Car < Vehicle
#   def tyreType
#     puts "Small car"
#   end
# end

# class Truck<Vehicle
#   def tyreType
#     puts "Big cars"
#   end
# end

# vehicle=Vehicle.new()
# vehicle.tyreType

# vehicle=Car.new()
# vehicle.tyreType

# vehicle=Truck.new()
# vehicle.tyreType

# #using ducktype
# class Hotel
#   def enters
#     puts "A customer Enters"
#   end
#   def room(customer)
#     puts customer.room
#   end
#   def type(customer)
#     puts customer.type
#   end
# end

# class Single 
#   def room
#     puts "Pre night stay is 5 thousant $"
#   end
#   def type
#     puts "room located on fouth floor of building"
#   end
# end

# class Couple 
#   def type 
#     puts "Room is on the second floor"
#   end
   
#   def room 
#     puts "Per night stay is 8 thousand"
#   end
# end

# hotel=Hotel.new()

# single=Single.new()
# couple=Couple.new()

# hotel.room(single)
# hotel.room(couple)
# hotel.type(single)
# hotel.type(couple)

# Access control
# class Access
#   def m1
#     p 'default methode 1 called'
#   end
#   public 
#   def m2
#     p 'public methode 2 called'
#   end
#   def accessForM4
#     m4
#   end
#   protected
#   def m3
#     p 'protected methode 3 called'
#   end
#   private
#   def m4
#     p 'private methode 4 called'
#   end
# end

# class Inheri<Access
#   def m3
#     Access.new().m3
#   end
#   def m4
#     Access.new().accessForM4
#   end
# end

# inheri=Inheri.new()

# inheri.m1
# inheri.m2
# inheri.m3
# inheri.m4