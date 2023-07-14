require "grip"
require "./customer_controller"

class Application < Grip::Application
  def port : Int32
    ENV["APP_PORT"].to_i || 8080
  end

  def initialize
    environment = ENV["APP_ENV"] || "development"
    super(environment: environment, serve_static: false)

    puts "Starting #{environment} server on port #{port}..."

    get "/customers", CustomerController, as: :get
    get "/customers/:id", CustomerController, as: :get_by_id
  end
end
