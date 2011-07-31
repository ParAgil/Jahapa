class Location < ActiveRecord::Base
  has_many :location_names
  has_many :stops
  has_many :routes, :through => :stops
end
