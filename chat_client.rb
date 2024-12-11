# chat_client.rb
require 'socket'

puts "Enter your name:"
name = gets.chomp

client = TCPSocket.new('localhost', 2000)

# Receive messages from the server in a separate thread
Thread.new do
  loop do
    message = client.gets.chomp
    puts message
  end
end

# Main loop to send messages to the server
loop do
  message = gets.chomp
  client.puts "#{name}: #{message}"
  break if message == 'exit'  # Exit the loop when 'exit' is typed
end

client.close
