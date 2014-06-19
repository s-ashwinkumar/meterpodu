class  DistanceController < ApplicationController
  
  	def get_rate
  		response = GoogleApi::Direction.new(params).distance
  		if response[:status] == 200
        Rails.logger.info response.inspect
      		render :json => {:rate => rate_calculator(response[:distance]/1000)}, :status => 200
  		else
      		render :text => "Oooops we are sowwwiiieeee. Please try again.", :status => 500
  		end	
  	end

  	def rate_calculator(distance)
  		rate = 25
  		distance -= 1.8
  		while distance > 0
  			distance -= 1
  			rate += 12
  		end	
  		rate
  	end	

end