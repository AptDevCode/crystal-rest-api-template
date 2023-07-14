require "clear"
require "dotenv"
require "log"

Dotenv.load

def connect_to_db
  db_name = ENV["DATABASE_NAME"]
  db_url = ENV["DATABASE_URL"]
  Log.info { "Connecting to DB: #{db_url}" }
  Clear::SQL.init(name: db_name, url: db_url)
end
