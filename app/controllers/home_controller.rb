class HomeController < ApplicationController
  def index
  end
  
  # move this to RouteController
  def search
    @routes = Route.from_locations(params)
    # 
    # @start = params[:start_location]
    # @end = params[:end_locations]
    # @found_locations = []
    # locations_array = Location.all
    # locations_array.each do |location|
    #   if location.name == @first || @second
    #     @found_locations << location
    #   end
    # end
    # if @found_locations.first && @found_locations.last != nil
    #   @routes = @found_locations.first.routes & @found_locations.last.routes
    # end
  end
end
