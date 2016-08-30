require "kemal"

get "/" do
  "Hello World"
end

ws "/socket" do |socket|
  socket.send "Hello from Kemal!"

  socket.on_message do |message|
    puts "Got: #{message}"
    #socket.send "Echo from server: #{message}"
  end

end

Kemal.run
