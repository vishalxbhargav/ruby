# require 'socket'
# hostname = 'localhost'           # means "this computer"
# port = 2000                      # a specific protocol
# s = TCPSocket.new hostname, port # opens a TCP connection
# while line = s.gets              # read lines from the socket
#   puts line                      # and print them
# end
# s.close                          # close the socket when done 


# require 'socket'
# server = TCPServer.new 2000 # server bind to port 2000
# loop do
#   client = server.accept    # wait for a client to connect
#   client.puts(Time.now)
#   client.puts "Closing the connection. Later!" 
#   client.close
# end
# 
require 'socket'

client = TCPSocket.new('localhost', 2000)


puts client.read

client.close