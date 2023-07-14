require "clear"

class DeliveryAddress
  include Clear::Model

  column id : Int64, primary: true, presence: false
  column customer_id : Int64
  column address1 : String
  column address2 : String
  column city : String
  column state : String
  column zip : String

  column created_at : Time
  column updated_at : Time

  belongs_to customer : Customer
end
