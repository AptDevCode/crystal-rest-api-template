require "granite/base"
require "../connection"

add_connection

# TODO: use Clear framework instead of Granite
# https://clear.gitbook.io/project/introduction/installation
class Customer < Granite::Base
  connection orderman

  # Table name
  table :customer

  column id : Int64, primary: true
  column name : String
  column email : String
  column phone : String

  # Timestamps
  timestamps
end
