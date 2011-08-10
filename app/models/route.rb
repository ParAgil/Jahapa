class Route < ActiveRecord::Base
  has_many :stops
  has_many :locations, :through => :stops
  
  def self.from_locations params
    # params[:start_location] && params[:end_location] ? Route.from_locations( params ) : Route.all
    start_location = Location.from_name(params[:start_location])
    end_location = Location.from_name(params[:end_location])
    ((start_location && start_location.routes) || []) & ((end_location && end_location.routes) || [])
  end
end
