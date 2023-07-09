require "granite/base"

class Customer < Granite::Base
  connection orderman

  # Table name
  table :customers

  column id : Int64, primary: true
  column name : String
  column email : String
  column phone_number : String

  # Timestamps
  timestamps
end
