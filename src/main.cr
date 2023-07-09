require "dotenv"
require "granite/adapter/pg"
require "granite/connections"
require "./application"

module Crystal::Rest::Api
  VERSION = "1.0.0"

  Dotenv.load

  # TODO: refactor DB connections to use a connection pool
  db_url = ENV["DATABASE_URL"]
  Granite::Connections << Granite::Adapter::Pg.new(name: "orderman", url: db_url)

  app = Application.new
  app.run
end
