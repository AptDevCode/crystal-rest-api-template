require "../entities/customer"

class GetCustomersUseCase
  def get_all_customers : Granite::Collection(Customer)
    customers = Customer.all
    if customers.empty? || customers.nil?
      raise "No customers found"
    end
    customers
  end

  def get_customer_by_id(id : Int) : Customer
    Customer.find_by!(id: id)
  end
end
