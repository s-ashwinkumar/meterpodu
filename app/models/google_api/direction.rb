module GoogleApi
  class Direction < Base

    def distance
  	  	response = self.class.get("/maps/api/directions/json?", @options)
  	  	GoogleResponseParser.get_distance(response.parsed_response) 
  	end

  end
end  	