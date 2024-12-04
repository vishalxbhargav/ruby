class DynamicHandler
	def method_missing(method_name,*arg,&block)
		puts "Method `#{method_name}` was called with arguments : #{args.inspect}"
		puts "No such method exists, but I cauth it"
	end
end

obj =DynamicHandler.new

obj.unknow_method(1,2,3)