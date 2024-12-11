class CustomException<StandardError
end

begin
  raise CustomException, 'this is custom exception'
rescue CustomException =>e
  puts "Error message: #{e.message}"
  puts "Backtrace: #{e.backtrace.join("\n")}"
end