# List the files and directories in the specified directory
if ARGV.size == 1
  dir = ARGV[0]
else
  dir = "."
end
entries = Dir.entries(dir)
entries.each { |file| puts file}
