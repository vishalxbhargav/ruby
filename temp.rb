class Demo
  @@val=0
  def initialize(data)
    @data=data
    @@val+=1
  end
  def self.getVal
    @@val
  end
  def getData
    @data
  end
end


d=Demo.new(12)
d2=Demo.new(24);
puts d.getData
puts d2.getData
puts Demo.getVal
# class Demo
#   attr_accessor :name
#   def initialize(name)
#     @name=name.to_s
#   end
# end

# d=Demo.new("xyz")
# puts d.name