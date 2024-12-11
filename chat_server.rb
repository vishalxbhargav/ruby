require 'socket'

server = TCPServer.new('localhost', 2000)  # Listen on port 2000
clients = []

puts "Chat server started on port 2000..."

loop do
  # Accept a new client connection
  client = server.accept
  clients << client
  puts "New client connected"

  # Create a thread for handling the client communication
  Thread.new(client) do |client_connection|
    begin
      # Handle incoming messages
      client_connection.puts "Welcome to the chat!"
      # puts client_connection.methods
      i=1
      while i>0
        message = client_connection.gets.chomp
        puts message
        break if message == "exit"  # Client wants to disconnect

        # Broadcast the message to all other clients
        clients.each do |other_client|
          other_client.puts "#{client_connection.peeraddr[2]}: #{message}" unless other_client == client_connection
        end
      end
    ensure
      # Clean up when client disconnects
      clients.delete(client_connection)
      client_connection.close
      puts "A client disconnected"
    end
  end
end