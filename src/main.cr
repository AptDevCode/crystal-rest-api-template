require "dotenv"
require "./application"

module Crystal::Rest::Api
  VERSION = "1.0.0"

  Dotenv.load

  app = Application.new
  app.run
end
