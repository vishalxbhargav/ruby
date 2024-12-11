=begin

=end

proc=Proc.new {puts "this is procs"}

proc.call

def fun
  proc=Proc.new{return "return from proc"}
  proc.call
  return "return from function"
end

def fun2(n)
  p=Proc.new{|name| puts "Hello, #{name}!" }
  p.call(n)
end

def fun3()
  my_proc = Proc.new { |x, y| puts "Sum: #{x},#{y}" }
  my_proc.call(3)
  my_proc.call(3, 4, 5)
end

puts fun
fun2("xyz")
fun3();