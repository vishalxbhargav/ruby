# # race condition
# count=0;

# thread=[]
# 10.times do
#   thread<<Thread.new do
#     sleep(rand(0)/10.0)
#     count+=1
#   end
# end

# thread.each(&:join)
# puts count

# #race conditon solution
# counter = 0
# mutex = Mutex.new

# threads = []
# 10.times do
#   threads << Thread.new do
#     mutex.synchronize do
#       counter += 1
#     end
#   end
# end

# threads.each(&:join)
# puts counter


# Deadlock
# def fun1()
#   fun2()
#   puts "fun1 is completed "
# end

# def fun2()
#   fun1()
#   puts "fun2 is completed "
# end

# fun2()

# mutex1=Mutex.new
# mutex2=Mutex.new

# thread1=Thread.new do
#   mutex1.lock
#   puts "Thread 1 locked mutex1"
#   sleep(1)
#   mutex2.lock
#   puts "Thread 1 locked mutex2"
#   mutex1.unlock
#   mutex2.unlock
# end

# thread2=Thread.new do
#   mutex2.lock
#   puts "Thread 2 locked mutex2"
#   sleep(1)
#   mutex1.lock
#   puts "Thread 2 lockde mutex1"
#   mutex2.unlock
#   mutex1.unlock
# end

# thread1.join
# thread2.join


# Deadlock Prevention Example

mutex1 = Mutex.new
mutex2 = Mutex.new

thread1 = Thread.new do
  mutex1.lock
  puts "Thread 1 locked mutex1"
  sleep(1)  # Simulate some work
  mutex2.lock
  puts "Thread 1 locked mutex2"
  mutex2.unlock
  mutex1.unlock
end

thread2 = Thread.new do
  mutex1.lock  # Lock mutex1 before mutex2
  puts "Thread 2 locked mutex1"
  sleep(1)  # Simulate some work
  mutex2.lock
  puts "Thread 2 locked mutex2"
  mutex2.unlock
  mutex1.unlock
end

thread1.join
thread2.join
