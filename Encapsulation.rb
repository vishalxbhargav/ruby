#here attr_accessor use to create gatter setter of instance variable 
#att_*---attr_writer use to only create getter and attr_reader used to create setter
class Bank
	attr_accessor :accout_holder_name, :balance
	
	def add_balance(amout)
		@balance=balance+amout
	end
end

bank =Bank.new
bank.accout_holder_name="vishal"
bank.balance=1000


puts bank.accout_holder_name
puts bank.balance
bank.add_balance(500)
puts bank.balance
puts defined?(bank)