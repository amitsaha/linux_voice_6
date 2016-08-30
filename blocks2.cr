# Demo of arguments

def show(arg)
  # yield calls the block with arguments, if any
  puts "show called with #{arg}"
  yield "Hello"
  yield "World"
end

#  Call the above method passing this block 
show "foo" do |msg|
  puts "Recieved: #{msg}"
end

# Alternative syntax
show "foo" { |msg| puts "Recieved: #{msg}" }
