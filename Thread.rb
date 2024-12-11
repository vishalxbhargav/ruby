# require 'uri'
# require 'net/http'
# require 'json'

# threads = []
# threads << Thread.new { 
#     uri = URI('https://pokeapi.co/api/v2/pokemon/gengar')
#     res = Net::HTTP.get_response(uri)
#     @gengar = JSON.parse(res.body)
    
# }

# threads << Thread.new { 
#     uri = URI('https://pokeapi.co/api/v2/pokemon/blastoise')
#     res = Net::HTTP.get_response(uri)
#     @blastoise = JSON.parse(res.body)
# }

# threads.each { |thr| thr.join }

# puts @gengar["moves"]
# puts @blastoise["moves"]

# def fun1()
#   i=0;
#   while i<105
#     puts "fun1 #{i} run on Time : #{Time.now}"
#     i+=1
#   end
# end

# def fun2()
#   i=0;
#   while i<105
#     puts "fun2 #{i} run on Time : #{Time.now}"
#     sleep(0.1)
#     i+=1
#   end
# end

# def fun3()
#   i=0;
#   while i<105
#     puts "fun3 #{i} run on Time : #{Time.now}"
#     i+=1
#   end
# end

# def fun4()
#   i=0;
#   while i<105
#     puts "fun4 #{i} run on Time : #{Time.now}"
#     i+=1
#   end
# end

# puts "Started At #{Time.now}"

# t1=Thread.new{fun1()}
# t2=Thread.new{fun2()}
# t3=Thread.new{fun3()}
# t4=Thread.new{fun4()}


# t1.join
# t2.join
# t3.join
# t4.join

# puts "End At #{Time.now}"


count = 0
arr = []

10.times do |i|
   arr[i] = Thread.new {
      sleep(rand(0)/10.0)
      Thread.current["mycount"] = count
      count += 1
   }
end

arr.each {|t| t.join; print t["mycount"], ", " }
puts "count = #{count}"