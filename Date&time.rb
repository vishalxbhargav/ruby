# require 'date'
# require 'tzinfo'

# tz=TZInfo::Timezone.get('UTC')
# puts Date.new(2000,7,31)
# puts Date.ordinal(2017,3)  
# puts tz.inspect
# d=DateTime.parse('31st July 2000 02:37:05',tz)

# puts d.inspect

# p d.hour
# p d.min
# puts d.offset.to_f   
current_time=Time.now
puts current_time.year.digits.inspect
           


