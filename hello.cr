puts "Hello from Crystal. Please enter a line of text: "
s = gets()
puts("You entered: #{s}")
puts("Type of input: #{typeof(s)}")
if s
  length = s.size
end
puts("Type of length: #{typeof(length)}")
puts("Number of characters you entered: #{length}")
