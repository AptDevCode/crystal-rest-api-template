require "granite/base"

class DeliveryAddress < Granite::Base
  connection orderman

  # Specify the table name
  table :delivery_address

  # Define the columns
  column id : Int64, primary: true
  column customer_id : Int64
  column address1 : String
  column address2 : String
  column city : String
  column state : String
  column zip : String

  # Timestamps
  timestamps

  # Define the associations
  belongs_to customer : Customer
end
