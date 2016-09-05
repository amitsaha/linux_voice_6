# Demo of blocks where the block is called with an argument

def transform_me
  yield "HelloWorld"
end

#  Call the above method passing this block 
transform_me do |msg|
  puts msg.upcase
end

transform_me do |msg|
  puts msg.underscore
end
