puts "Hello from Crystal. Please enter a line of text: "
s = gets()
puts("You entered: #{s}")
puts("Type of input: #{typeof(s)}")
length = s.try &.size
puts("Type of length: #{typeof(length)}")
puts("Number of characters you entered: #{length}")
