require "grip"
require "./usecases/get_customers_use_case"

class CustomerController < Grip::Controllers::Http
  # TODO: use dependency injection
  property get_customers_use_case : GetCustomersUseCase

  def initialize
    super
    @get_customers_use_case = GetCustomersUseCase.new
  end

  def get(context : Context)
    all_customers = @get_customers_use_case.get_all_customers

    context
      .put_status(200)
      .put_resp_header("Server", "TornadoServer/6.0.4")
      .json(all_customers.to_json)
  end

  def get_by_id(context : Context) : Context
    params = context.fetch_path_params
    id = params["id"].to_i

    customer = @get_customers_use_case.get_customer_by_id(id)

    context
      .put_status(200)
      .put_resp_header("Server", "TornadoServer/6.0.4")
      .json(customer.to_json)
  end
end
