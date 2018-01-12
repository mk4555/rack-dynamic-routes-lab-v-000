class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item = req.path.split("/items/").last
      if @@items.include?(item)
        resp.status = 200
        resp.write "#{item.price}"
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end
