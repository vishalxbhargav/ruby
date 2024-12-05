class Person
  attr_accessor :name,:age
  def initialize(name,age)
    self.name=name
    self.age=age
  end
end

class Student < Person
  def initialize(name,age)
    super(name,age)
  end
end

student=Student.new("vishal",24)

puts student.name