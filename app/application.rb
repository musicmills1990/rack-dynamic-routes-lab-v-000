class Application

@@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    new_item = Item.new
    if req.path=="/items/#{new_item}"
      if @@items.include? new_item
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
