require "http"
ws = HTTP::WebSocket.new(URI.parse("ws://localhost:3000/socket"))
ws.send("Hello")
