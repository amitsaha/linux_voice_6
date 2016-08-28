require "kemal"

clients = [] of HTTP::WebSocket

get "/" do
  "Hello World"
end

ws "/socket" do |socket|

  clients << socket

  socket.on_message do |message|
    clients.each {|socket| socket.send message}
  end

  socket.on_close do
    clients.delete socket
  end
end

Kemal.run
