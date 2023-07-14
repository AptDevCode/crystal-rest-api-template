require "dotenv"
require "log"
require "./application"
require "./entities/connection"

module Crystal::Rest::Api
  VERSION = "1.0.0"

  add_connection

  Log.info { "Running application" }
  app = Application.new
  app.run
end
