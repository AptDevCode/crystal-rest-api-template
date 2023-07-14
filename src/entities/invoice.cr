require "clear"

class Invoice
  include Clear::Model

  column id : Int64, primary: true, presence: false
  column customer_id : Int64
  column invoice_number : String
  column invoice_status : String
  column subtotal : Float64
  column tax : Float64
  column total : Float64
  column payment_method : String
  column payment_status : String

  column created_at : Time
  column updated_at : Time

  belongs_to customer : Customer
end
