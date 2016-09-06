require "./spec_helper"
require "http"

describe Broadcaster do
  # Start our kemal web application
  start

  it "can call /" do
    get "/"
    response.body.should contain "Hello client"
  end

  it "can talk to websocket /socket" do
    server = "#{APP_URL}/socket"
    ws = HTTP::WebSocket.new(URI.parse(server))
    ws.send("Hello from client")
 end

  # Stop our web application
  stop

end
