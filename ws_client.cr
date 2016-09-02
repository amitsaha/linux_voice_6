require "http"
ws = HTTP::WebSocket.new(URI.parse("ws://localhost:3000/socket"))


while true
  ws.send("Hello")
  ws.on_message do |message|
    puts "Got #{message} from server"
  end
end
