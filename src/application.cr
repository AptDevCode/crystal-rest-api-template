require "grip"
require "./project_controller"

class Application < Grip::Application
  def port : Int32
    ENV["APP_PORT"].to_i || 8080
  end

  def initialize
    environment = ENV["APP_ENV"] || "development"
    super(environment: "development", serve_static: false)

    get "/", ProjectController
  end
end
