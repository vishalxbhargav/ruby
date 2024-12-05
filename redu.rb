counter = 0

while counter < 3
  puts "Counter is #{counter}"
  counter += 1

  if counter == 3
    puts "Redoing the current iteration."
    redo  # This will go back to the start of the loop without checking the condition again.
  end
end
