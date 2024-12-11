# def met
#   yield
#   puts "method"
#   yield
# end

# met{puts "block methode"}

# def fun(&block)
#   block.call
#   puts "methode"
#   block.call
# end

# fun{puts "block called"}


# class Novel
#   attr_accessor :pages,:name
#   def initialize
#     yield(self)
#   end
# end

# novel =Novel.new do |n|
#   n.pages=520;
#   n.name="harry potter"
# end

# puts novel.inspect

c='a'.to_char
puts c.class