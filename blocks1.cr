# Demo of blocks where the block is called with an argument

def transform
  yield "HelloWorld"
end

#  Call the above method passing this block 
transform do |msg|
  puts msg.upcase
end

transform do |msg|
  puts msg.underscore
end
