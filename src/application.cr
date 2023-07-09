require "grip"
require "./project_controller"

class Application < Grip::Application
  def initialize
    super(environment: "development", serve_static: false)

    get "/", ProjectController
  end
end
