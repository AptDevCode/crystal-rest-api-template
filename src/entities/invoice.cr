require "granite/base"

class Invoice < Granite::Base
  table :invoice

  column id : Int64, primary: true
  column customer_id : Int64
  column invoice_number : String
  column invoice_status : String
  column subtotal : Float64
  column tax : Float64
  column total : Float64
  column payment_method : String
  column payment_status : String

  timestamps

  belongs_to customer : Customer
end
