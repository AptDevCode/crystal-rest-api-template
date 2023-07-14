require "clear"

class Product
  include Clear::Model

  column id : Int64, primary: true, presence: false
  column name : String
  column price : Float64
  column sold_by : String

  column created_at : Time
  column updated_at : Time
end
