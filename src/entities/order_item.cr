require "granite/base"
require "../connection"

add_connection

class OrderItem < Granite::Base
  table :order_item

  column id : Int64, primary: true
  column order_id : Int64
  column product_id : Int64
  column quantity : Int32

  timestamps

  belongs_to order : Order
  belongs_to product : Product
end
