require "granite/base"
require "../connection"

add_connection

class Product < Granite::Base
  table :product

  column id : Int64, primary: true
  column name : String
  column price : Float64
  column sold_by : String

  timestamps
end
