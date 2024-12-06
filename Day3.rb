# Control Statements:-

# if else

#1 given number positive or nagitive

# print "enter input : "
# x=gets.chomp.to_i

# if x > 0
#     puts "Given number is positive"
# elsif x==0
#     puts "given number is zero"
# else
#     puts "given number is negitive"
# end

#2 calculate percentage of student input given sub wise


# puts "enter number sub wise \n"
# print "Hindi : "
# h=gets.chomp.to_i
# print "English : "
# e=gets.chomp.to_i
# print "Maths : "
# m=gets.chomp.to_i
# print "Physics : "
# p=gets.chomp.to_i
# print "Chemistry : "
# c=gets.chomp.to_i

# total=(h+e+m+p+c)/5.to_f

# puts "------------------"
# puts "Result : #{total}%"

# 3. check given number od or even

# print "Enter number : "
# x=gets.chomp.to_i

# if x&1
#     puts "Given number #{x} is odd"
# else 
#     puts "Given number #{x} is even"
# end


# switch case

#simulate Calculator
# print "Enter fist number : "
# n1=gets.to_i
# print "Enter second number : "
# n2=gets.to_i

# print "Enter Operation to be perform *,/,-,+ any : "
# op=gets.chomp.to_s


# case op
# when "+"
#     puts "result : #{n1+n2}"
# when "*"
#     puts "result : #{n1*n2}"
# when "-"
#     puts "result : #{n1-n2}"
# when "/"
#     puts "result : #{n1/n2}"
# else 
#     puts "You have Enter wrong operation! please try again"
# end
# for loop

# for i in (1..10)
#     puts i
# end

#Print table of given number
# print "Enter n : "
# n=gets.chomp.to_i
# for i in (1..10)
#   puts "#{n}*#{i}  =  #{n*i}"
# end

#Iterate over the array using for loop
# arr=[1,2,3,4,5,6,7,8,9]
# for i in (0...arr.size)
#   puts "arr[#{i}]=#{arr[i]}"
# end

# while and do while

#simple iterate 
# i=1
# while i<=10
#     puts i
#     i+=1
# end

#find the maximum in array
# arr=[1,12,34,1,-1,5,7,2,10,10]
# i=1
# max=arr[0]
# while i<arr.size
#   if max<arr[i]
#     max=arr[i]
#   end
#   i+=1
# end
# puts "max #{max}"
# 
#
#
#
#using begin and end 
# i=0
# begin
#     puts i
#     i+=1
# end while i<11


#
# do while 
# i=0

# while i<10 do
#     puts i*i+i
#     i+=1
# end

# until-untile is oposite of while when the condition become true it end
# i=0;
# until i>10
#   i+=1
#   puts i
# end

# break and next

# for i in 0..10
#   if( i==2)
#     break
#   end
#   puts i
# end

# for i in 0...10
#   if(i==5)
#     next
#   end
#   puts i
# end

# redo and retry-both use to repeate iteration if we don't stop with using some condition it will run infinite times or untile memory gets

#redo-in below code i add condition 
# i=-1
# while i<10
#   i+=1
#   if i==2
#     redo
#   end
#   puts i
# end


#this code run infinite times because i+=1 add after redo
# i=0;
# while i<4
#   puts i
#   if(i==2) then redo end
#   i+=1
# end
# 


#retry-retry we generally we use in exception handling to execute he begin block again if exception might get resolve.

# x=10

# begin
#     puts "begin block"
#     x=x/0
    
# raise ZeroDivisionError=>e
#     pust e.message
#     puts "raise block"
# rescue
#     puts "rescue block"
#     retry
    
# end


begin
         
    # using raise to create an exception   
    raise 'Exception Created!'
   
    puts 'After Exception' 
   
  # using Rescue method 
rescue    
    puts 'Finally Saved!'
    
# using retry statement   
retry
end 