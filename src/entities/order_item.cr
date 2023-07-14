require "clear"

class OrderItem
  include Clear::Model

  column id : Int64, primary: true, presence: false
  column order_id : Int64
  column product_id : Int64
  column quantity : Int32

  column created_at : Time
  column updated_at : Time

  belongs_to order : Order
  belongs_to product : Product
end
