require "http"

if ARGV.size == 1
  server = ARGV[0]
else
  server = "ws://localhost:3000/socket"
end
ws = HTTP::WebSocket.new(URI.parse(server))
# This fiber will run concurrently waiting for a line of input
# and then writing to the socket
spawn do
    while true
      msg = gets()
      if msg
        ws.send(msg)
      end
    end
end

# Display any message we get from the server
ws.on_message do |message|
    puts "Got: #{message}"
end

# Start the ws loop
ws.run
