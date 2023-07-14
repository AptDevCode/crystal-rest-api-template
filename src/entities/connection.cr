require "dotenv"
require "granite/adapter/pg"
require "granite/connections"

Dotenv.load

def add_connection
  db_name = ENV["DATABASE_NAME"]
  db_url = ENV["DATABASE_URL"]
  puts "Connecting to DB: #{db_url}"
  Granite::Connections << Granite::Adapter::Pg.new(name: db_name, url: db_url)
end
