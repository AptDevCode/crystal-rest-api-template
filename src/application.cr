require "grip"
require "./demo_controller"

class Application < Grip::Application
  def initialize
    super(environment: "development", serve_static: false)

    get "/", DemoController
  end
end
