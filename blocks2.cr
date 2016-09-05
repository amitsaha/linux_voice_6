# Demo of arguments to and from blocks

def upper(str)
  yield str.upcase
end

# Call the above method with arguments and passing this block
upper "HelloWorld" do |result|
  puts result
end
