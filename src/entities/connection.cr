require "clear"
require "dotenv"
require "log"

Dotenv.load

def add_connection
  db_name = ENV["DATABASE_NAME"]
  db_url = ENV["DATABASE_URL"]
  Log.info { "Connecting to DB: #{db_url}" }
  Clear::SQL.init(name: db_name, url: db_url)
end
