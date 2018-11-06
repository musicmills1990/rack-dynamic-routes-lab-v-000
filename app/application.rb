class Application

@@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    if req.path=="/items/#{Item.new}"
      if @@items.include? Item.new
        resp.write = "#{Item.price}"
      else
        resp.write = "Item not found"
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end

end
