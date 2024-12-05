# 1. Basic data types (String, Integer, float, boolean, hash, array, symbol)


#string 
 
def reverse(str)
  s = 0                   
  e = str.size - 1      
  ans = str.chars
  while s < e
    ans[s], ans[e] = ans[e], ans[s]  
    s += 1
    e -= 1
  end
  ans.join 
end

# puts str

#reverse string 
# puts reverse(str)

def palindrome(str)
  s = 0
  e = str.size - 1

  while s < e
    if str[s] != str[e]
      return false
    end
    s += 1
    e -= 1
  end
  true
end
#palindrom or not
# puts palindrome('vishalxbhargav')

#string compression

def compression(str)
  ans=String.new("")
  i=1
  while i<str.size
    cnt=1
    while(str[i]==str[i-1])
      cnt+=1
      i+=1
    end
    ch=cnt.to_s
    ans<<str[i-1]
    ans<<ch
    i+=1
  end
  ans
end
# str=String.new("aaaabcccdd")
# puts compression(str)


#Integer

#sum of digit 

def sum_of_digit(n)
  ans=0
  while n>0
    ans+=n%10
    n/=10
  end
  ans
end

#reverse number 
def reverse_number(n)
  ans=0
  while n>0
    ans=ans*10+n%10
    n/=10
  end
  ans
end


#add two string and return integer

def add(s1, s2)
  ans = String.new("")
  i = s1.size - 1
  j = s2.size - 1
  carry = 0

  while i >= 0 || j >= 0 || carry > 0
    n1 = i >= 0 ? s1[i].to_i : 0
    n2 = j >= 0 ? s2[j].to_i : 0
    sum = n1 + n2 + carry
    carry = sum / 10
    ans << (sum % 10).to_s
    i -= 1
    j -= 1
  end

  ans.reverse
end
# puts sum_of_digit(x)
# puts reverse_number(x)
# puts add("15762","3259")





#Float
#to convert any number of numeric string into float" to_f "
#
puts "2423".to_f.class

puts 99090.to_f

puts 3.12<=>3.03
puts 3.12<=>3.33
puts 3.12<=>3.12

puts 3.2.round
puts 5.6.round

#conversoin into ration number

puts 3.12.to_r


#math properties

# puts -3.14.abs  # => 3.14




#Boolean
#

x=true
y=false

puts x|y
puts x.to_s
puts x^y
puts x&&y
puts x&y



# Hash
h = {:a => 0, :b => 1, :c => 2}
puts h[:b]
h[:d]=3

#fetch use when key not found then only block execute
h.fetch(:a){|x| puts "#{x} not found"}

h.store(:e,4)

puts h[:e]  

puts h.values
puts h.keys
puts h.values_at(:a,:e)



#Symbols
#
#
#
#symbols can be represent as methode name
# def greet
#   "Hello!"
# end

# method_name = :greet
# puts method_name

puts 1000.times { :symbol_name.object_id } # All return the same object ID.


# Symbol Basics
sym = :example

# Conversion
puts sym.to_s    # "example"
puts "example".to_sym == sym # true

# Comparison
puts :a == :a    # true
puts :a < :b     # true

# Hash Usage
settings = { theme: "dark", lang: "en" }
puts settings[:theme] # "dark"

# Dynamic Method Calling
def say_hello
  "Hello!"
end
puts send(:say_hello) # "Hello!"

# Inspecting All Symbols
puts Symbol.all_symbols.size





# 2. Basic class and object concepts.
# 

#class
class Student
   
  def initialize(name)
    @name==name
  end
  def setName(name)
    @name=name
  end
  def getName()
    @name
  end
end

#object

# student =Student.new("vishal")

# puts student.getName



# 2. Variables - local, class, instance, global and Constants
$y=20
def update()
 y=30
 return 
end
#local variable
a=10
# puts a.inspect
#globle variable

puts $y
update()
puts $y


#instace variable 

class User
  def initialize
    @name=name
    @id=id
  end
end

#here name and id are instance variable 

#class variable
class Customer
  @@number_of_cutomer=0
  def initialize(name,id)
    @name=name
    @id=id
    @@number_of_cutomer+=1
  end
  def get_customer_count
    @@number_of_cutomer
  end
end

customer=Customer.new("xyz",1)
customer2=Customer.new("abc",2);
customer3=Customer.new("jkl",3)

puts customer.get_customer_count


#Constant variable

PI=3.142

def redius_of_circle(r)
  r*r*PI
end

puts redius_of_circle(10)


#user input - we use gets.chomp for user input


a=gets.chomp
puts "user input #{a}"

# Utilizing STDIN.gets for Input Stream

puts "Please enter a number:"
number = STDIN.gets.chomp.to_i
puts "You entered: #{number}"