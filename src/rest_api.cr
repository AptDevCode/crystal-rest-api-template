require "dotenv"
require "./application"

module Crystal::Rest::Api
  VERSION = "1.0.0"

  puts "Running application"
  app = Application.new
  app.run
end
