class HomeController < ApplicationController
  def index
    if params[:start_location] && params[:end_location] 
      @routes = Route.from_locations( params )
    else
      @routes = []
    end
  end
  
  def facebook
    if params[:start_location] && params[:end_location] 
      @routes = Route.from_locations( params )
    else
      @routes = []
    end
    
    respond_to do |format|
      format.html { render 'home/facebook', :layout => 'facebook_layout'}
    end
  end
end
