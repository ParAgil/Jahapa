require 'spec_helper'
describe 'Route' do
  describe 'Relationships' do
    before do
      @route = Route.create
      @location_1 = Location.create
      @stop_1 = Stop.create :route_id => @route.id, :location_id => @location_1.id
    end
    
    it 'should have many stops' do
      @route.stops.should == [@stop_1]
    end
    
    it 'should have many locations' do
      @route.locations.should == [@location_1]
    end
  end
end