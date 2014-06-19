
module GoogleApi
  class Base
    require_dependency 'lib/google_response_parser'
  	include HTTParty
  	base_uri 'https://maps.googleapis.com'

    def initialize(hash)
    	@options = { query: hash.merge({key: "AIzaSyDgfl2HkWjZ5kjmM7-fWI9PQbZwh1iz42g" }) }
  	end

  end
end  	