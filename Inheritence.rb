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
# end

# student=Student.new("vishal",24)

# puts student.name



class Parent
  class_attribute :foo
end
class Child < Parent
end
class Grandchild < Child
end
p Parent.foo = 100
p Child.foo 
p Child.foo = 200 
p Child.foo 
p Parent.foo 
p Grandchild.foo