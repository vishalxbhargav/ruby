# begin  
#   puts 'I am before the raise.'  
#   raise 'An error has occurred.'  
#   puts 'I am after the raise.'  
# rescue  
#   puts 'I am rescued.'  
# end  
# puts 'I am after the begin block.' 
# count=0
# begin
#   puts "begin block"
#   flag=true
#   if flag
#     raise "test of exception"
#   end
#   puts "puts end of begin block"
# rescue Exception =>e
#   puts e.message
#   count+=1;
#   if count<5 then retry end
  
# else 
#   puts "this block execute if no exception accur" 
# ensure
#   flag=false
#   puts "always execute"
# end

# begin
#   x=10/0
# rescue Exception => e
#   puts "Error message: #{e.message}"
#   puts "Backtrace: #{e.backtrace.join("\n")}"
# else 
#   puts "no exceptin accur"
# ensure 
#   puts "close all resources"
# end

class FileNotFound < StandardError 
end
#close resources
begin
  file=File.open('./text.txt')
  puts file.inspect
  if file 
    raise FileNotFound,"couldn't find file path"
  end
rescue FileNotFound => e
  puts "Error message: #{e.message}"
  puts "Backtrace: #{e.backtrace.join("\n")}"
ensure
  file.close()
  puts "file closed"
end