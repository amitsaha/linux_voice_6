# Demo of blocks without any arguments

def transform
  puts "In transform"
  yield
end

#  Call the above method passing this block 
transform do
  puts "Block called"
end
