class HomeController < ApplicationController
  def index
    if params[:start_location] && params[:end_location] 
      @routes = Route.from_locations( params )
    else
      @routes = []
    end
  end
end
