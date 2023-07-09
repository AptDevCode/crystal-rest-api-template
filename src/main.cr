require "grip"
require "./application"

# TODO: Write documentation for `Crystal::Rest::Api::Template`
module Crystal::Rest::Api
  VERSION = "1.0.0"

  app = Application.new
  app.run
end
