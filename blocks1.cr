def show
  # yield calls the block with arguments, if any
  yield "Hello"
  yield "World"
end

#  Call the above method passing this block 
show do |msg|
  puts "Recieved: #{msg}"
end

# Alternative syntax
show { |msg| puts "Recieved: #{msg}" }
