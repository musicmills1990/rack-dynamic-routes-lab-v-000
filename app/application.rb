class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items/#{Item.name}"
      resp.write = "#{Item.price}"

  end
end
