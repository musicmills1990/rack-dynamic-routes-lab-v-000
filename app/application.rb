class Application

@@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    n = Item.new
    if req.path=="/items/#{n}"
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
