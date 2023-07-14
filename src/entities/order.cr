require "clear"

class Order
  include Clear::Model

  column id : Int64, primary: true, presence: false
  column customer_id : Int64
  column delivery_address_id : Int64
  column order_number : String
  column order_status : String

  column created_at : Time
  column updated_at : Time

  belongs_to customer : Customer
  belongs_to delivery_address : DeliveryAddress
end
