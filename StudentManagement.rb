class Student
  attr_accessor :id,:name,:cls,:age
  def initialize(id,name,cls,age)
    self.id=id
    self.name=name
    self.cls=cls
    self.age=age
  end
end
class StudentMangement
  attr_accessor :student
  def initialize()
    @@student=[]
  end
  def findStudentById(id)
    @@student.each do |s|
      if s.id==id 
        return s;
      end
    end
    "No student found with id : #{id}"
  end
  def addStudent(std)
    student=findStudentById(std.id)
    if student.class==String
      @@student<<std
      puts "Student Created"
      return "Student Created"
    end
    puts "Student Aready creteded with id : #{std.id}"
    "Student Aready creteded with id : #{std.id}"
  end
  def display
    @@student.each {|x| puts "id : #{x.id}, name : #{x.name}, class : #{x.cls}, age : #{x.age}"}
  end
  def delete(id)
    student=findStudentById(id)
    if student.class!=String
      @@student.each_with_index do |ele,i|
        if ele.id==id
          @@student.delete_at(i)
          return "Student deleted"
        end
      end
    end
    student
  end
  def update(id,name,age,cls)
    student=findStudentById(id)
    if student.class!=String
      @@student.each_with_index do |ele,i|
        if ele.id==id
          st=Student.new(id,name,age,cls)
          @@student[i]=st 
          puts "Student updated"
          return "Student updated"
        end
        
      end
    end
    student
  end
end

student=Student.new(1,"xyz",12,17);
student1=Student.new(2,"abc",12,17);
student2=Student.new(3,"efg",12,17);
student3=Student.new(4,"lxy",12,17);
student4=Student.new(5,"lea",12,17);
student8=Student.new(4,"ref",8,14);
# puts student.inspect

#add student
studentManagement=StudentMangement.new()
studentManagement.addStudent(student)
studentManagement.addStudent(student1)
studentManagement.addStudent(student2)
studentManagement.addStudent(student3)
studentManagement.addStudent(student4)
studentManagement.addStudent(student8)

# find user by id
puts studentManagement.findStudentById(8).inspect
#delete user
puts studentManagement.delete(9)
#display user
studentManagement.display()
#update user
puts studentManagement.update(5,"leo",12,18).inspect
studentManagement.display