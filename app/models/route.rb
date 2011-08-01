class Route < ActiveRecord::Base
  has_many :stops
  has_many :locations, :through => :stops
end
