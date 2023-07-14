require "clear"

class Customer
  include Clear::Model

  column id : Int64, primary: true, presence: false
  column name : String
  column email : String
  column phone : String

  column created_at : Time
  column updated_at : Time
end
