# require 'pg'

# begin
#   # Connect to PostgreSQL database
#   conn = PG.connect(
#     dbname: 'ruby',
#     user: 'postgres',
#     password: 'admin123'
#   )

#   # Execute a simple query
#   result = conn.exec("SELECT * FROM users LIMIT 5;")
  
#   # Print the results
#   result.each do |row|
#     puts row
#   end

#   # Close the connection
#   conn.close

# rescue PG::Error => e
#   puts "An error occurred: #{e.message}"
# end

require 'mongo'

# URI with username, password, and specific database
uri = 'mongodb://root:root123@127.0.0.1:27017'

# Connect to MongoDB
client = Mongo::Client.new(uri)

# Access a collection
collection = client[:users]

# Insert a document
collection.insert_one({ name: 'Alice', age: 30 })

# Query the collection
user = collection.find(name: 'Alice').first

# Print the result
puts "Found user: #{user}"

# Close the connection
client.close
