require "kemal"

# Array, clients to store the incoming
# connections
clients = [] of HTTP::WebSocket

get "/" do
  "Hello client, connect to /socket for websocket chat!"
end

ws "/socket" do |socket|

  # Add to the clients array
  clients << socket

  # On recieving a message from a client, echo it
  # back to all other clients
  socket.on_message do |message|
    clients.each {|socket| socket.send message}
  end

  # If a client disconnects, delete it
  # from the array
  socket.on_close do
    clients.delete socket
  end
end

Kemal.run
