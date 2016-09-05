# Demo of arguments to and from blocks

def show(arg1, arg2)
  # yield calls the block with arguments, if any
  puts "show called with #{arg1} and #{arg2}"
  yield "Hello"
  yield "World"
end

# Call the above method with arguments and passing this block
show "foo", 1 do |msg|
  puts "Recieved: #{msg}"
end
