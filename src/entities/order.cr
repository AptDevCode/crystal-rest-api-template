require "granite/base"
require "../connection"

add_connection

class Order < Granite::Base
  table :orders

  column id : Int64, primary: true
  column customer_id : Int64
  column delivery_address_id : Int64
  column order_number : String
  column order_status : String

  timestamps

  belongs_to customer : Customer
  belongs_to delivery_address : DeliveryAddress
end
