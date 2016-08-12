# List the files and directories in the specified directory
dir = ARGV[0]
puts(dir)
# If no directory specified, default to the current directory
d = Dir.new(".")
d.each { |x| puts "Got #{x}" }

# Or get as an array
entries = Dir.entries(".")
entries.each { |file| puts "Got #{file}"}
