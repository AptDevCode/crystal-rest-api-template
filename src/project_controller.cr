require "grip"

class ProjectController < Grip::Controllers::Http
  def get(context : Context)
    context
      .put_status(201)
      .put_resp_header("Server", "TornadoServer/6.0.4")
      .json({
        "id" => 1,
      })
  end
end
