# class Counter
#   @@count = 0  # Class variable

#   def self.increment
#     @count += 1  # Increment the class variable
#   end

#   def self.total_count
#     @count  # Return the value of the class variable
#   end
# end

# # Using the class methods
# Counter.increment
# Counter.increment
# puts Counter.total_count  # Output: 2
=begin
class Global
  @@dataClass=0
  def initialize
    @dataInstance=0
  end
  def sayClass
    @@dataClass
  end
  def sayInstance
    @dataInstance
  end
  def increment(num)
    @@dataClass=@@dataClass+num
    @dataInstance=@dataInstance+num
  end
end

globle=Global.new
globle2=Global.new

globle.increment(1)
puts globle.sayClass
puts globle.sayInstance
globle2.increment(2)
globle2.increment(2)
puts globle.sayClass
puts globle.sayInstance
=end


