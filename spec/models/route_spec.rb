require 'spec_helper'
describe 'Route' do
  before do
    @route = Route.create
  end
  describe 'Relationships' do
    before do
      @location_1 = Location.create
      @location_2 = Location.create
      @stop_1 = Stop.create :route_id => @route.id, :location_id => @location_1.id
      @stop_2 = Stop.create :route_id => @route.id, :location_id => @location_2.id
    end
    
    it 'should have many stops' do
      @route.stops.should == [@stop_1, @stop_2]
    end
    
    it 'should have many locations' do
      @route.locations.should == [@location_1, @location_2]
    end
  end
  
  it 'should have a name' do
    @route.name = 'Linea 49'
    @route.name.should == 'Linea 49'
  end
end