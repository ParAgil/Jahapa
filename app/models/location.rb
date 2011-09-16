class Location < ActiveRecord::Base
  has_many :names, :class_name => 'LocationName'
  has_many :stops
  has_many :routes, :through => :stops
  belongs_to :default_location_name, :class_name => 'LocationName', :foreign_key => 'default_name_id'
  
  def latlong=(string)
    self.lat, self.long = string.split(',')
  end
  
  def latlong
    "#{lat}, #{long}"
  end
  
  def default_name
    default_location_name || names.first
  end
  
  def name
    default_name && default_name.name
  end
  
  def self.from_name(str)
    name = LocationName.from_name(str)
    name && name.location
  end
  
  def self.from_names params
    if params[:start_location] && params[:end_location]
      start_location = Location.from_name(params[:start_location])
      end_location = Location.from_name(params[:end_location])
      locations = [start_location, end_location]
    else
      Location.all
    end
  end
end
