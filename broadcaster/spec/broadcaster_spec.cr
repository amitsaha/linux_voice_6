require "./spec_helper"

describe Broadcaster do
  # TODO: Write tests
  start

  it "renders /" do
    get "/"
    response.body.should contain "Hello client"
  end

  stop

end
