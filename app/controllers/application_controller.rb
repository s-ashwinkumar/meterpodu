class ApplicationController < ActionController::Base
  protect_from_forgery
  def index
  end

  def about_us
  	render :layout => 'about'
  end	
end
