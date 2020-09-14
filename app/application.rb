class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now
    time = time.hour

    if time >= 12 
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end
    # resp.write time

    resp.finish
  end

end