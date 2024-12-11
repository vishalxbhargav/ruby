lem=->{puts "this is lamda block"}
lem.call

def fun(n)
  lambda = ->(name) { puts "Hello, #{name}!" }
  lambda.call(n)
end

def fun2
  ->{return "return value from lamda"}.call
  return "return value from function"
end

def fun3
  l=lambda{|x,y| puts "sum : #{x+y}"}
  l.call(2,4)
  l.call(2)
end

puts fun(20)
puts fun2
fun3