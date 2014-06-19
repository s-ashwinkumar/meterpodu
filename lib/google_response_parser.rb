class GoogleResponseParser
	class << self
		def get_distance(response)
			if response["status"] == "OK"
				{:status => 200, :distance => response["routes"].first["legs"].first["distance"]["value"]}
			else
				{:status => response["status"], :message => response["error_message"]}	
			end	
		end	
	end	
end