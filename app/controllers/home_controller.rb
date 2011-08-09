class HomeController < ApplicationController
  def index
    @routes = params[:start_location] && params[:end_location] ? Route.from_locations( params ) : []
  end
end
