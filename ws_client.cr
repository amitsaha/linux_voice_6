require "http"
ws = HTTP::WebSocket.new(URI.parse("ws://localhost:3000/socket"))
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
