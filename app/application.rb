class Application

    def call(env)
      resp = Rack::Response.new
        
      time = Time.now #2020-10-24 12:43:02 -0700 (so after 12:00 noon)
      #to test before noon:
      #time = Time.new(2020, 10, 1, 11, 30, 10)
  
      if time.strftime("%k:%M") < "12:00" #changed to military time
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end
  
      resp.finish
    end
  
  end 