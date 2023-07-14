require "../entities/customer"

class GetCustomersUseCase
  def get_all_customers : Array(Customer)
    customers = Customer.query.to_a
    if customers.empty? || customers.nil?
      raise "No customers found"
    end
    customers
  end

  def get_customer_by_id(id : Int) : Customer
    Customer.find!({id: id})
  end
end
