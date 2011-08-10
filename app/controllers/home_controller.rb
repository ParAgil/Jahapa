class HomeController < ApplicationController
  def index
    @routes = Route.from_locations( params )
  end
end
